import '../../../../core/config/app_config.dart';
import '../../../../core/network/api_exception.dart';
import '../../../../shared/catalog/meli_category_path.dart';
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

  /// Cache leaf → root para no martillar `/categories` en una misma sesión.
  final Map<String, String> _rootCategoryByLeaf = {};

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

  /// Una página de catálogo enriquecida con su mejor oferta (si existe).
  ///
  /// No oculta productos sin precio: la UI les pone un label. Ordena con
  /// precio primero y deduplica dentro de la página (id o mismo título).
  /// Offset 1:1 contra el catálogo, apto para paginación por scroll.
  Future<ProductSearchPage> _searchWithOffers({
    required String header,
    required String keywords,
    required int limit,
    required int offset,
  }) async {
    final page = await _remote.searchProducts(
      authorizationHeader: header,
      siteId: AppConfig.mercadoLibreSiteId,
      keywords: keywords,
      limit: limit,
      offset: offset,
    );

    if (page.results.isEmpty) return page;

    final enriched = await Future.wait(
      page.results.map((product) async {
        final offers = await _safeOffers(header, product.id);
        final best = offers.isEmpty ? null : offers.first;
        return best == null ? product : product.copyWith(bestOffer: best);
      }),
    );

    final seenIds = <String>{};
    final seenTitles = <String>{};
    final withPrice = <CatalogProduct>[];
    final withoutPrice = <CatalogProduct>[];
    for (final product in enriched) {
      final titleKey = product.title.trim().toLowerCase();
      if (!seenIds.add(product.id) || !seenTitles.add(titleKey)) {
        continue; // duplicado exacto o mismo nombre de producto
      }
      (product.bestOffer != null ? withPrice : withoutPrice).add(product);
    }

    return ProductSearchPage(
      query: page.query,
      results: List.unmodifiable([...withPrice, ...withoutPrice]),
      total: page.total,
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
      return _safeOffers(header, productId);
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
      final offers = await _remote.getProductOffers(
        authorizationHeader: authorizationHeader,
        productId: productId,
      );
      return Future.wait(
        offers.map((o) => _withRootCategory(authorizationHeader, o)),
      );
    } on ApiException {
      return const [];
    }
  }

  /// Completa [ProductOffer.rootCategoryId] usando `path_from_root`.
  Future<ProductOffer> _withRootCategory(
    String authorizationHeader,
    ProductOffer offer,
  ) async {
    final leaf = offer.categoryId?.trim();
    if (leaf == null || leaf.isEmpty) return offer;
    if (offer.rootCategoryId != null) return offer;

    final cached = _rootCategoryByLeaf[leaf];
    if (cached != null) {
      return offer.copyWith(rootCategoryId: cached);
    }

    try {
      final category = await _remote.getCategoryById(
        authorizationHeader: authorizationHeader,
        categoryId: leaf,
      );
      final root = MeliCategoryPath.resolveRootId(
        leafId: leaf,
        pathFromRootIds: category.pathFromRoot.map((n) => n.id),
      );
      if (root != null) {
        _rootCategoryByLeaf[leaf] = root;
        return offer.copyWith(rootCategoryId: root);
      }
    } catch (_) {
      // Sin path: dejamos solo categoryId hoja.
    }
    return offer;
  }
}
