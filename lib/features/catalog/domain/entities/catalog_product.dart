import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_product.freezed.dart';

/// Producto de catálogo MeLi (no es un ítem/publicación marketplace).
@freezed
abstract class CatalogProduct with _$CatalogProduct {
  const CatalogProduct._();

  const factory CatalogProduct({
    required String id,
    required String title,
    required String domainId,
    required String status,
    String? thumbnailUrl,
    @Default([]) List<String> pictureUrls,
    String? shortDescription,
    @Default([]) List<ProductAttribute> attributes,

    /// Oferta asociada si se enriqueció o se pidió detalle con ofertas.
    ProductOffer? bestOffer,
  }) = _CatalogProduct;

  double? get price => bestOffer?.price;
  String? get currencyId => bestOffer?.currencyId;
  bool get freeShipping => bestOffer?.freeShipping ?? false;

  /// Categoría hoja de la oferta (MeLi).
  String? get categoryId => bestOffer?.categoryId;

  /// Categoría raíz MLA (enriquecida en data). Preferida para misiones.
  String? get rootCategoryId => bestOffer?.rootCategoryId;
}

@freezed
abstract class ProductAttribute with _$ProductAttribute {
  const factory ProductAttribute({
    required String id,
    required String name,
    String? valueName,
  }) = _ProductAttribute;
}

/// Publicación/oferta del marketplace ligada a un producto de catálogo.
@freezed
abstract class ProductOffer with _$ProductOffer {
  const ProductOffer._();

  const factory ProductOffer({
    required String itemId,
    required double price,
    required String currencyId,
    required String condition,
    double? originalPrice,

    /// Categoría hoja que devuelve MeLi en la oferta.
    String? categoryId,

    /// Categoría raíz MLA resuelta vía `path_from_root` (capa data).
    String? rootCategoryId,
    @Default(false) bool freeShipping,
    int? sellerId,
  }) = _ProductOffer;

  double? get discountPercent {
    final original = originalPrice;
    if (original == null || original <= 0 || original <= price) return null;
    return ((original - price) / original) * 100;
  }
}

@freezed
abstract class ProductSearchPage with _$ProductSearchPage {
  const factory ProductSearchPage({
    required String query,
    required List<CatalogProduct> results,
    required int total,
    required int limit,
    required int offset,
  }) = _ProductSearchPage;
}

@freezed
abstract class ProductSearchParams with _$ProductSearchParams {
  const factory ProductSearchParams({
    /// Texto libre a buscar.
    String? query,

    /// Si se informa, se resuelve el nombre de la categoría y se suma a la query.
    String? categoryId,
    @Default(20) int limit,
    @Default(0) int offset,

    /// Cuando es true, consulta ofertas por producto (más lento, tiene precios).
    @Default(false) bool includeOffers,
  }) = _ProductSearchParams;
}
