import '../entities/catalog_product.dart';
import '../errors/catalog_failure.dart';
import '../repositories/catalog_repository.dart';

class GetProductById {
  const GetProductById(this._repository);

  final CatalogRepository _repository;

  Future<CatalogProduct> call(
    String productId, {
    bool includeOffers = true,
  }) {
    final id = productId.trim();
    if (id.isEmpty) {
      throw const ProductNotFound('productId vacío');
    }
    return _repository.getProductById(id, includeOffers: includeOffers);
  }
}
