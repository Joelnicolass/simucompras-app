import '../../../../core/network/api_clients.dart';
import '../../../../core/network/api_exception.dart';
import '../../domain/datasources/catalog_remote_datasource.dart';
import '../../domain/entities/catalog_product.dart';
import '../../domain/entities/category.dart';
import '../mappers/catalog_product_mapper.dart';
import '../mappers/category_mapper.dart';
import '../models/catalog_product_model.dart';
import '../models/category_model.dart';

class CatalogRemoteDatasourceImpl implements CatalogRemoteDatasource {
  CatalogRemoteDatasourceImpl(this._client);

  final MercadoLibreApiClient _client;

  Map<String, String> _authHeaders(String authorizationHeader) => {
        'Authorization': authorizationHeader,
        'Accept': 'application/json',
      };

  @override
  Future<ProductSearchPage> searchProducts({
    required String authorizationHeader,
    required String siteId,
    required String keywords,
    required int limit,
    required int offset,
  }) async {
    final json = await _client.get(
      '/products/search',
      headers: _authHeaders(authorizationHeader),
      queryParameters: {
        'status': 'active',
        'site_id': siteId,
        'q': keywords,
        'limit': '$limit',
        'offset': '$offset',
      },
    );

    final page = ProductSearchPageModel.fromJson(
      json,
      fallbackQuery: keywords,
    );
    return page.toEntity();
  }

  @override
  Future<CatalogProduct> getProductById({
    required String authorizationHeader,
    required String productId,
  }) async {
    final json = await _client.get(
      '/products/$productId',
      headers: _authHeaders(authorizationHeader),
    );
    return CatalogProductModel.fromJson(json).toEntity();
  }

  @override
  Future<List<ProductOffer>> getProductOffers({
    required String authorizationHeader,
    required String productId,
  }) async {
    try {
      final json = await _client.get(
        '/products/$productId/items',
        headers: _authHeaders(authorizationHeader),
      );

      final results = (json['results'] as List? ?? const [])
          .whereType<Map>()
          .map((e) => ProductOfferModel.fromJson(Map<String, dynamic>.from(e)))
          .where((o) => o.itemId.isNotEmpty && o.price > 0)
          .map((o) => o.toEntity())
          .toList(growable: false);

      results.sort((a, b) => a.price.compareTo(b.price));
      return results;
    } on HttpException catch (error) {
      // Catálogo sin buy-box: 404 "No winners found".
      if (error.statusCode == 404) return const [];
      rethrow;
    }
  }

  @override
  Future<List<Category>> getRootCategories({
    required String authorizationHeader,
    required String siteId,
  }) async {
    final list = await _client.getList(
      '/sites/$siteId/categories',
      headers: _authHeaders(authorizationHeader),
    );

    return list
        .whereType<Map>()
        .map((e) => CategoryModel.fromJson(Map<String, dynamic>.from(e)))
        .where((c) => c.id.isNotEmpty)
        .map((c) => c.toEntity())
        .toList(growable: false);
  }

  @override
  Future<Category> getCategoryById({
    required String authorizationHeader,
    required String categoryId,
  }) async {
    final json = await _client.get(
      '/categories/$categoryId',
      headers: _authHeaders(authorizationHeader),
    );
    return CategoryModel.fromJson(json).toEntity();
  }
}
