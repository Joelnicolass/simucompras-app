import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injector.dart';
import '../../../auth/presentation/providers/session_access_token_provider.dart';
import '../../domain/entities/catalog_product.dart';
import '../../domain/usecases/search_products.dart';
import 'catalog_browse_seed_provider.dart';

part 'featured_products_provider.g.dart';

/// Productos de ejemplo para secciones de home / listados.
///
/// keepAlive: las secciones de la home se montan/desmontan al scrollear el
/// ListView; sin esto el provider se descarta y repite la request.
///
/// Observa [catalogBrowseSeedProvider] para variar el offset en cada inicio
/// o pull-to-refresh sin crear nuevas instancias del family.
@Riverpod(keepAlive: true)
Future<List<CatalogProduct>> featuredProducts(
  Ref ref, {
  String query = 'smart tv',
  int limit = 6,
}) async {
  await ref.watch(sessionAccessTokenProvider.future);
  final seed = ref.watch(catalogBrowseSeedProvider);

  // Ventana acotada: el hit-rate de ofertas es bajo; offsets muy altos
  // suelen devolver pocos productos con precio.
  final offset = Random(seed ^ query.hashCode).nextInt(30) * 5;

  final results = await _searchWithOffers(
    query: query,
    limit: limit,
    offset: offset,
  );

  if (results.length >= limit || offset == 0) {
    return results;
  }

  // Si el offset aleatorio cayó en una zona pobre, caemos al inicio.
  return _searchWithOffers(query: query, limit: limit, offset: 0);
}

Future<List<CatalogProduct>> _searchWithOffers({
  required String query,
  required int limit,
  required int offset,
}) async {
  final page = await getIt<SearchProducts>()(
    ProductSearchParams(
      query: query,
      limit: limit,
      offset: offset,
      includeOffers: true,
    ),
  );
  return page.results;
}
