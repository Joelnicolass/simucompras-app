import '../entities/catalog_product.dart';
import '../entities/category.dart';

/// Contrato del datasource remoto de catálogo (API MercadoLibre).
///
/// Nota pragmática de la arquitectura del proyecto: el contrato vive en
/// domain y expone DTOs de data vía el impl; aquí devolvemos entidades
/// mapeadas en el impl del datasource para mantener el boundary limpio
/// con los repositorios — el repository solo orquesta token + errores.
abstract interface class CatalogRemoteDatasource {
  Future<ProductSearchPage> searchProducts({
    required String authorizationHeader,
    required String siteId,
    required String keywords,
    required int limit,
    required int offset,
  });

  Future<CatalogProduct> getProductById({
    required String authorizationHeader,
    required String productId,
  });

  Future<List<ProductOffer>> getProductOffers({
    required String authorizationHeader,
    required String productId,
  });

  Future<List<Category>> getRootCategories({
    required String authorizationHeader,
    required String siteId,
  });

  Future<Category> getCategoryById({
    required String authorizationHeader,
    required String categoryId,
  });
}
