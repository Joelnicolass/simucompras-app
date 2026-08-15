import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_product_model.freezed.dart';
part 'catalog_product_model.g.dart';

/// DTO de producto de catálogo (`/products/*`).
///
/// La API varía las claves según el endpoint (search vs detalle); esas
/// rarezas se resuelven declarativamente con `readValue`/`fromJson`.
@freezed
abstract class CatalogProductModel with _$CatalogProductModel {
  const CatalogProductModel._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CatalogProductModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @JsonKey(readValue: _readTitle) @Default('') String title,
    @Default('') String domainId,
    @Default('unknown') String status,
    @JsonKey(name: 'pictures', fromJson: _pictureUrlsFromJson)
    @Default([])
    List<String> pictureUrls,
    @JsonKey(fromJson: _shortDescriptionFromJson) String? shortDescription,
    @JsonKey(fromJson: _attributesFromJson)
    @Default([])
    List<ProductAttributeModel> attributes,
  }) = _CatalogProductModel;

  factory CatalogProductModel.fromJson(Map<String, dynamic> json) =>
      _$CatalogProductModelFromJson(json);

  String? get thumbnailUrl => pictureUrls.isNotEmpty ? pictureUrls.first : null;
}

/// El search devuelve `id`; otros payloads solo traen `catalog_product_id`.
Object? _readId(Map<dynamic, dynamic> json, String key) =>
    json['id'] ?? json['catalog_product_id'];

/// Catálogo usa `name`; marketplace usa `title`.
Object? _readTitle(Map<dynamic, dynamic> json, String key) =>
    json['name'] ?? json['title'];

List<String> _pictureUrlsFromJson(Object? raw) {
  if (raw is! List) return const [];
  return raw
      .whereType<Map>()
      .map((p) => p['url'] as String? ?? p['secure_url'] as String?)
      .whereType<String>()
      .where((url) => url.isNotEmpty)
      .toList(growable: false);
}

/// Puede venir como string plano o como objeto `{content: ...}`.
String? _shortDescriptionFromJson(Object? raw) {
  if (raw is Map) {
    final content = raw['content'] as String?;
    if (content != null && content.trim().isNotEmpty) return content.trim();
  }
  if (raw is String && raw.trim().isNotEmpty) return raw.trim();
  return null;
}

List<ProductAttributeModel> _attributesFromJson(Object? raw) {
  if (raw is! List) return const [];
  return raw
      .whereType<Map>()
      .map((a) => ProductAttributeModel.fromJson(Map<String, dynamic>.from(a)))
      .where((a) => a.id.isNotEmpty)
      .toList(growable: false);
}

@freezed
abstract class ProductAttributeModel with _$ProductAttributeModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ProductAttributeModel({
    @Default('') String id,
    @Default('') String name,
    String? valueName,
  }) = _ProductAttributeModel;

  factory ProductAttributeModel.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeModelFromJson(json);
}

/// DTO de oferta (`/products/{id}/items`).
@freezed
abstract class ProductOfferModel with _$ProductOfferModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ProductOfferModel({
    @Default('') String itemId,
    @Default(0) double price,
    @Default('') String currencyId,
    @Default('not_specified') String condition,
    double? originalPrice,
    String? categoryId,
    @JsonKey(readValue: _readFreeShipping) @Default(false) bool freeShipping,
    int? sellerId,
  }) = _ProductOfferModel;

  factory ProductOfferModel.fromJson(Map<String, dynamic> json) =>
      _$ProductOfferModelFromJson(json);
}

/// El flag viene anidado en `shipping.free_shipping`.
Object? _readFreeShipping(Map<dynamic, dynamic> json, String key) {
  final shipping = json['shipping'];
  return shipping is Map ? shipping['free_shipping'] == true : false;
}

/// Página de resultados de `/products/search`.
///
/// No usa `fromJson` generado: necesita `fallbackQuery` (la API a veces no
/// ecoa `keywords`) y desanida `paging` a mano.
@freezed
abstract class ProductSearchPageModel with _$ProductSearchPageModel {
  const factory ProductSearchPageModel({
    required String query,
    required List<CatalogProductModel> results,
    required int total,
    required int limit,
    required int offset,
  }) = _ProductSearchPageModel;

  factory ProductSearchPageModel.fromSearchJson(
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
      total: paging is Map
          ? (paging['total'] as num?)?.toInt() ?? results.length
          : results.length,
      limit: paging is Map
          ? (paging['limit'] as num?)?.toInt() ?? results.length
          : results.length,
      offset: paging is Map ? (paging['offset'] as num?)?.toInt() ?? 0 : 0,
    );
  }
}
