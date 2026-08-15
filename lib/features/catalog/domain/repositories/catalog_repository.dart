import '../entities/catalog_product.dart';
import '../entities/category.dart';

abstract interface class CatalogRepository {
  Future<ProductSearchPage> searchProducts(ProductSearchParams params);

  Future<CatalogProduct> getProductById(
    String productId, {
    bool includeOffers = true,
  });

  Future<List<ProductOffer>> getProductOffers(String productId);

  Future<List<Category>> getRootCategories();

  Future<Category> getCategoryById(String categoryId);
}
