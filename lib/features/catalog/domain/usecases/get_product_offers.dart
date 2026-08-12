import '../entities/catalog_product.dart';
import '../errors/catalog_failure.dart';
import '../repositories/catalog_repository.dart';

class GetProductOffers {
  const GetProductOffers(this._repository);

  final CatalogRepository _repository;

  Future<List<ProductOffer>> call(String productId) {
    final id = productId.trim();
    if (id.isEmpty) {
      throw const ProductNotFound('productId vacío');
    }
    return _repository.getProductOffers(id);
  }
}
