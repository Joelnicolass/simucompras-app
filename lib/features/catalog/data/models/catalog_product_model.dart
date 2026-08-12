class CatalogProductModel {
  const CatalogProductModel({
    required this.id,
    required this.title,
    required this.domainId,
    required this.status,
    this.thumbnailUrl,
    this.pictureUrls = const [],
    this.shortDescription,
    this.attributes = const [],
  });

  factory CatalogProductModel.fromJson(Map<String, dynamic> json) {
    final pictures = _pictureUrls(json['pictures']);
    return CatalogProductModel(
      id: json['id'] as String? ?? json['catalog_product_id'] as String? ?? '',
      title: json['name'] as String? ?? json['title'] as String? ?? '',
      domainId: json['domain_id'] as String? ?? '',
      status: json['status'] as String? ?? 'unknown',
      thumbnailUrl: pictures.isNotEmpty ? pictures.first : null,
      pictureUrls: pictures,
      shortDescription: _shortDescription(json['short_description']),
      attributes: _attributes(json['attributes']),
    );
  }

  final String id;
  final String title;
  final String domainId;
  final String status;
  final String? thumbnailUrl;
  final List<String> pictureUrls;
  final String? shortDescription;
  final List<ProductAttributeModel> attributes;

  static List<String> _pictureUrls(Object? raw) {
    if (raw is! List) return const [];
    return raw
        .whereType<Map>()
        .map((p) => p['url'] as String? ?? p['secure_url'] as String?)
        .whereType<String>()
        .where((url) => url.isNotEmpty)
        .toList(growable: false);
  }

  static String? _shortDescription(Object? raw) {
    if (raw is Map) {
      final content = raw['content'] as String?;
      if (content != null && content.trim().isNotEmpty) return content.trim();
    }
    if (raw is String && raw.trim().isNotEmpty) return raw.trim();
    return null;
  }

  static List<ProductAttributeModel> _attributes(Object? raw) {
    if (raw is! List) return const [];
    return raw
        .whereType<Map>()
        .map(
          (a) => ProductAttributeModel(
            id: a['id'] as String? ?? '',
            name: a['name'] as String? ?? '',
            valueName: a['value_name'] as String?,
          ),
        )
        .where((a) => a.id.isNotEmpty)
        .toList(growable: false);
  }
}

class ProductAttributeModel {
  const ProductAttributeModel({
    required this.id,
    required this.name,
    this.valueName,
  });

  final String id;
  final String name;
  final String? valueName;
}

class ProductOfferModel {
  const ProductOfferModel({
    required this.itemId,
    required this.price,
    required this.currencyId,
    required this.condition,
    this.originalPrice,
    this.categoryId,
    this.freeShipping = false,
    this.sellerId,
  });

  factory ProductOfferModel.fromJson(Map<String, dynamic> json) {
    final shipping = json['shipping'];
    final free = shipping is Map ? shipping['free_shipping'] == true : false;

    return ProductOfferModel(
      itemId: json['item_id'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0,
      currencyId: json['currency_id'] as String? ?? '',
      condition: json['condition'] as String? ?? 'not_specified',
      originalPrice: (json['original_price'] as num?)?.toDouble(),
      categoryId: json['category_id'] as String?,
      freeShipping: free,
      sellerId: json['seller_id'] as int?,
    );
  }

  final String itemId;
  final double price;
  final String currencyId;
  final String condition;
  final double? originalPrice;
  final String? categoryId;
  final bool freeShipping;
  final int? sellerId;
}

class ProductSearchPageModel {
  const ProductSearchPageModel({
    required this.query,
    required this.results,
    required this.total,
    required this.limit,
    required this.offset,
  });

  factory ProductSearchPageModel.fromJson(
    Map<String, dynamic> json, {
    required String fallbackQuery,
  }) {
    final paging = json['paging'];
    final results = (json['results'] as List? ?? const [])
        .whereType<Map>()
        .map((e) => CatalogProductModel.fromJson(Map<String, dynamic>.from(e)))
        .where((p) => p.id.isNotEmpty)
        .toList(growable: false);

    return ProductSearchPageModel(
      query: json['keywords'] as String? ?? fallbackQuery,
      results: results,
      total: paging is Map ? (paging['total'] as num?)?.toInt() ?? results.length : results.length,
      limit: paging is Map ? (paging['limit'] as num?)?.toInt() ?? results.length : results.length,
      offset: paging is Map ? (paging['offset'] as num?)?.toInt() ?? 0 : 0,
    );
  }

  final String query;
  final List<CatalogProductModel> results;
  final int total;
  final int limit;
  final int offset;
}
