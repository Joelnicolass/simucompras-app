// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatalogProductModel _$CatalogProductModelFromJson(Map<String, dynamic> json) =>
    _CatalogProductModel(
      id: _readId(json, 'id') as String? ?? '',
      title: _readTitle(json, 'title') as String? ?? '',
      domainId: json['domain_id'] as String? ?? '',
      status: json['status'] as String? ?? 'unknown',
      pictureUrls: json['pictures'] == null
          ? const []
          : _pictureUrlsFromJson(json['pictures']),
      shortDescription: _shortDescriptionFromJson(json['short_description']),
      attributes: json['attributes'] == null
          ? const []
          : _attributesFromJson(json['attributes']),
    );

Map<String, dynamic> _$CatalogProductModelToJson(
  _CatalogProductModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'domain_id': instance.domainId,
  'status': instance.status,
  'pictures': instance.pictureUrls,
  'short_description': instance.shortDescription,
  'attributes': instance.attributes,
};

_ProductAttributeModel _$ProductAttributeModelFromJson(
  Map<String, dynamic> json,
) => _ProductAttributeModel(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  valueName: json['value_name'] as String?,
);

Map<String, dynamic> _$ProductAttributeModelToJson(
  _ProductAttributeModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'value_name': instance.valueName,
};

_ProductOfferModel _$ProductOfferModelFromJson(Map<String, dynamic> json) =>
    _ProductOfferModel(
      itemId: json['item_id'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0,
      currencyId: json['currency_id'] as String? ?? '',
      condition: json['condition'] as String? ?? 'not_specified',
      originalPrice: (json['original_price'] as num?)?.toDouble(),
      categoryId: json['category_id'] as String?,
      freeShipping: _readFreeShipping(json, 'free_shipping') as bool? ?? false,
      sellerId: (json['seller_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProductOfferModelToJson(_ProductOfferModel instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'price': instance.price,
      'currency_id': instance.currencyId,
      'condition': instance.condition,
      'original_price': instance.originalPrice,
      'category_id': instance.categoryId,
      'free_shipping': instance.freeShipping,
      'seller_id': instance.sellerId,
    };
