/// Producto de catálogo MeLi (no es un ítem/publicación marketplace).
class CatalogProduct {
  const CatalogProduct({
    required this.id,
    required this.title,
    required this.domainId,
    required this.status,
    this.thumbnailUrl,
    this.pictureUrls = const [],
    this.shortDescription,
    this.attributes = const [],
    this.bestOffer,
  });

  final String id;
  final String title;
  final String domainId;
  final String status;
  final String? thumbnailUrl;
  final List<String> pictureUrls;
  final String? shortDescription;
  final List<ProductAttribute> attributes;

  /// Oferta asociada si se enriqueció o se pidió detalle con ofertas.
  final ProductOffer? bestOffer;

  double? get price => bestOffer?.price;
  String? get currencyId => bestOffer?.currencyId;
  bool get freeShipping => bestOffer?.freeShipping ?? false;
}

class ProductAttribute {
  const ProductAttribute({
    required this.id,
    required this.name,
    this.valueName,
  });

  final String id;
  final String name;
  final String? valueName;
}

/// Publicación/oferta del marketplace ligada a un producto de catálogo.
class ProductOffer {
  const ProductOffer({
    required this.itemId,
    required this.price,
    required this.currencyId,
    required this.condition,
    this.originalPrice,
    this.categoryId,
    this.freeShipping = false,
    this.sellerId,
  });

  final String itemId;
  final double price;
  final String currencyId;
  final String condition;
  final double? originalPrice;
  final String? categoryId;
  final bool freeShipping;
  final int? sellerId;

  double? get discountPercent {
    final original = originalPrice;
    if (original == null || original <= 0 || original <= price) return null;
    return ((original - price) / original) * 100;
  }
}

class ProductSearchPage {
  const ProductSearchPage({
    required this.query,
    required this.results,
    required this.total,
    required this.limit,
    required this.offset,
  });

  final String query;
  final List<CatalogProduct> results;
  final int total;
  final int limit;
  final int offset;
}

class ProductSearchParams {
  const ProductSearchParams({
    this.query,
    this.categoryId,
    this.limit = 20,
    this.offset = 0,
    this.includeOffers = false,
  });

  /// Texto libre a buscar.
  final String? query;

  /// Si se informa, se resuelve el nombre de la categoría y se suma a la query.
  final String? categoryId;

  final int limit;
  final int offset;

  /// Cuando es true, consulta ofertas por producto (más lento, tiene precios).
  final bool includeOffers;
}
