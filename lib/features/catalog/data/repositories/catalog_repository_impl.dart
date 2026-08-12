import '../../../../core/config/app_config.dart';
import '../../../../core/network/api_exception.dart';
import '../../../auth/domain/repositories/auth_repository.dart';
import '../../domain/datasources/catalog_remote_datasource.dart';
import '../../domain/entities/catalog_product.dart';
import '../../domain/entities/category.dart';
import '../../domain/errors/catalog_failure.dart';
import '../../domain/repositories/catalog_repository.dart';

class CatalogRepositoryImpl implements CatalogRepository {
  CatalogRepositoryImpl(this._remote, this._auth);

  final CatalogRemoteDatasource _remote;
  final AuthRepository _auth;

  /// Tamaño de página contra /products/search al buscar con ofertas.
  static const _offersBatchSize = 20;

  /// Tope de páginas de catálogo a explorar por búsqueda con ofertas.
  static const _offersMaxBatches = 4;

  Future<String> _authorizationHeader() async {
    final token = await _auth.getAccessToken();
    return token.authorizationHeader;
  }

  @override
  Future<ProductSearchPage> searchProducts(ProductSearchParams params) async {
    try {
      final header = await _authorizationHeader();
      final keywords = await _resolveKeywords(params, header);

      if (!params.includeOffers) {
        return _remote.searchProducts(
          authorizationHeader: header,
          siteId: AppConfig.mercadoLibreSiteId,
          keywords: keywords,
          limit: params.limit,
          offset: params.offset,
        );
      }

      return await _searchWithOffers(
        header: header,
        keywords: keywords,
        limit: params.limit,
        offset: params.offset,
      );
    } on CatalogFailure {
      rethrow;
    } on HttpException catch (error) {
      if (error.statusCode == 404) {
        throw const ProductNotFound();
      }
      throw CatalogUnavailable(error.message, error);
    } on ApiException catch (error) {
      throw CatalogUnavailable(error.message, error);
    } catch (error) {
      throw CatalogUnavailable(
        'Error inesperado al buscar productos: $error',
        error,
      );
    }
  }

  /// Pagina el catálogo acumulando solo productos con oferta hasta llenar
  /// [limit]. Muchos productos de catálogo no tienen vendedores (sin buy
  /// box), por eso una sola página suele quedar corta.
  Future<ProductSearchPage> _searchWithOffers({
    required String header,
    required String keywords,
    required int limit,
    required int offset,
  }) async {
    final collected = <CatalogProduct>[];
    final seenIds = <String>{};
    final seenTitles = <String>{};

    var batchOffset = offset;
    var total = 0;
    var query = keywords;

    for (var batch = 0; batch < _offersMaxBatches; batch++) {
      final page = await _remote.searchProducts(
        authorizationHeader: header,
        siteId: AppConfig.mercadoLibreSiteId,
        keywords: keywords,
        limit: _offersBatchSize,
        offset: batchOffset,
      );
      total = page.total;
      query = page.query;

      if (page.results.isEmpty) break;

      final enriched = await Future.wait(
        page.results.map((product) async {
          final offers = await _safeOffers(header, product.id);
          final best = offers.isEmpty ? null : offers.first;
          return (product: product, best: best);
        }),
      );

      for (final entry in enriched) {
        final best = entry.best;
        if (best == null) continue;

        final product = entry.product;
        final titleKey = product.title.trim().toLowerCase();
        if (!seenIds.add(product.id) || !seenTitles.add(titleKey)) {
          continue; // duplicado exacto o mismo nombre de producto
        }

        collected.add(product.copyWith(bestOffer: best));
        if (collected.length >= limit) break;
      }

      if (collected.length >= limit) break;

      batchOffset += page.results.length;
      if (batchOffset >= total) break;
    }

    return ProductSearchPage(
      query: query,
      results: List.unmodifiable(collected.take(limit)),
      total: total,
      limit: limit,
      offset: offset,
    );
  }

  Future<String> _resolveKeywords(
    ProductSearchParams params,
    String authorizationHeader,
  ) async {
    final parts = <String>[];
    final query = params.query?.trim();
    if (query != null && query.isNotEmpty) {
      parts.add(query);
    }

    final categoryId = params.categoryId?.trim();
    if (categoryId != null && categoryId.isNotEmpty) {
      try {
        final category = await _remote.getCategoryById(
          authorizationHeader: authorizationHeader,
          categoryId: categoryId,
        );
        if (category.name.isNotEmpty) {
          parts.add(category.name);
        } else {
          parts.add(categoryId);
        }
      } on HttpException catch (error) {
        if (error.statusCode == 404) {
          throw CategoryNotFound('Categoría $categoryId no encontrada');
        }
        rethrow;
      }
    }

    final keywords = parts.join(' ').trim();
    if (keywords.isEmpty) {
      throw const InvalidSearchQuery();
    }
    return keywords;
  }

  @override
  Future<CatalogProduct> getProductById(
    String productId, {
    bool includeOffers = true,
  }) async {
    try {
      final header = await _authorizationHeader();
      final product = await _remote.getProductById(
        authorizationHeader: header,
        productId: productId,
      );

      if (!includeOffers) return product;

      final offers = await _safeOffers(header, productId);
      final best = offers.isEmpty ? null : offers.first;
      return product.copyWith(bestOffer: best);
    } on CatalogFailure {
      rethrow;
    } on HttpException catch (error) {
      if (error.statusCode == 404) {
        throw ProductNotFound('Producto $productId no encontrado');
      }
      throw CatalogUnavailable(error.message, error);
    } on ApiException catch (error) {
      throw CatalogUnavailable(error.message, error);
    } catch (error) {
      throw CatalogUnavailable(
        'Error inesperado al obtener el producto',
        error,
      );
    }
  }

  @override
  Future<List<ProductOffer>> getProductOffers(String productId) async {
    try {
      final header = await _authorizationHeader();
      return _remote.getProductOffers(
        authorizationHeader: header,
        productId: productId,
      );
    } on CatalogFailure {
      rethrow;
    } on ApiException catch (error) {
      throw CatalogUnavailable(error.message, error);
    } catch (error) {
      throw CatalogUnavailable('Error inesperado al obtener ofertas', error);
    }
  }

  @override
  Future<List<Category>> getRootCategories() async {
    try {
      final header = await _authorizationHeader();
      return _remote.getRootCategories(
        authorizationHeader: header,
        siteId: AppConfig.mercadoLibreSiteId,
      );
    } on ApiException catch (error) {
      throw CatalogUnavailable(error.message, error);
    } catch (error) {
      throw CatalogUnavailable('Error inesperado al listar categorías', error);
    }
  }

  @override
  Future<Category> getCategoryById(String categoryId) async {
    try {
      final header = await _authorizationHeader();
      return _remote.getCategoryById(
        authorizationHeader: header,
        categoryId: categoryId,
      );
    } on CatalogFailure {
      rethrow;
    } on HttpException catch (error) {
      if (error.statusCode == 404) {
        throw CategoryNotFound('Categoría $categoryId no encontrada');
      }
      throw CatalogUnavailable(error.message, error);
    } on ApiException catch (error) {
      throw CatalogUnavailable(error.message, error);
    } catch (error) {
      throw CatalogUnavailable(
        'Error inesperado al obtener la categoría',
        error,
      );
    }
  }

  Future<List<ProductOffer>> _safeOffers(
    String authorizationHeader,
    String productId,
  ) async {
    try {
      return await _remote.getProductOffers(
        authorizationHeader: authorizationHeader,
        productId: productId,
      );
    } on ApiException {
      return const [];
    }
  }
}
