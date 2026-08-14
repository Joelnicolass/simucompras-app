// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartLineModel _$CartLineModelFromJson(Map<String, dynamic> json) =>
    _CartLineModel(
      productId: json['productId'] as String,
      title: json['title'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      unitPrice: (json['unitPrice'] as num).toDouble(),
      originalUnitPrice: (json['originalUnitPrice'] as num?)?.toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      isSuperOffer: json['isSuperOffer'] as bool? ?? false,
      categoryId: json['categoryId'] as String?,
    );

Map<String, dynamic> _$CartLineModelToJson(_CartLineModel instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'title': instance.title,
      'thumbnailUrl': instance.thumbnailUrl,
      'unitPrice': instance.unitPrice,
      'originalUnitPrice': instance.originalUnitPrice,
      'quantity': instance.quantity,
      'isSuperOffer': instance.isSuperOffer,
      'categoryId': instance.categoryId,
    };

_CartModel _$CartModelFromJson(Map<String, dynamic> json) => _CartModel(
  lines:
      (json['lines'] as List<dynamic>?)
          ?.map((e) => CartLineModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$CartModelToJson(_CartModel instance) =>
    <String, dynamic>{'lines': instance.lines};
