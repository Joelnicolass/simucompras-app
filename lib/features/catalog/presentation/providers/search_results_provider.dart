import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injector.dart';
import '../../../auth/presentation/providers/session_access_token_provider.dart';
import '../../domain/entities/catalog_product.dart';
import '../../domain/usecases/search_products.dart';
import '../states/search_results_state.dart';

part 'search_results_provider.g.dart';

/// Búsqueda paginada por texto libre y/o categoría (scroll infinito).
///
/// autoDispose (default): al salir de la pantalla se descarta; cada
/// búsqueda es una instancia distinta del family.
@riverpod
class SearchResults extends _$SearchResults {
  static const _pageSize = 10;

  int _offset = 0;
  int _total = 0;
  bool _loadingMore = false;

  @override
  Future<SearchResultsState> build({String? query, String? categoryId}) async {
    await ref.watch(sessionAccessTokenProvider.future);

    final page = await _fetchPage(0);
    _offset = _pageSize;
    _total = page.total;
    return SearchResultsState(
      products: page.results,
      hasMore: _hasMore(page.results),
    );
  }

  /// Agrega la página siguiente. Idempotente mientras hay una carga en
  /// curso; ante error conserva lo acumulado (reintenta el próximo scroll).
  Future<void> loadMore() async {
    final current = state.value;
    if (_loadingMore || current == null || !current.hasMore) return;

    _loadingMore = true;
    try {
      final page = await _fetchPage(_offset);
      _offset += _pageSize;
      _total = page.total;

      final seenIds = current.products.map((p) => p.id).toSet();
      final seenTitles = current.products
          .map((p) => p.title.trim().toLowerCase())
          .toSet();
      final appended = [
        ...current.products,
        ...page.results.where(
          (p) =>
              seenIds.add(p.id) && seenTitles.add(p.title.trim().toLowerCase()),
        ),
      ];

      state = AsyncData(
        SearchResultsState(products: appended, hasMore: _hasMore(page.results)),
      );
    } catch (_) {
      // Silencioso: la lista actual sigue visible y el próximo scroll reintenta.
    } finally {
      _loadingMore = false;
    }
  }

  bool _hasMore(List<CatalogProduct> lastPage) =>
      lastPage.isNotEmpty && _offset < _total;

  Future<ProductSearchPage> _fetchPage(int offset) {
    return getIt<SearchProducts>()(
      ProductSearchParams(
        query: query,
        categoryId: categoryId,
        limit: _pageSize,
        offset: offset,
        includeOffers: true,
      ),
    );
  }
}
