// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PurchaseLineModel _$PurchaseLineModelFromJson(Map<String, dynamic> json) =>
    _PurchaseLineModel(
      productId: json['productId'] as String,
      title: json['title'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      unitPrice: (json['unitPrice'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      isSuperOffer: json['isSuperOffer'] as bool? ?? false,
    );

Map<String, dynamic> _$PurchaseLineModelToJson(_PurchaseLineModel instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'title': instance.title,
      'thumbnailUrl': instance.thumbnailUrl,
      'unitPrice': instance.unitPrice,
      'quantity': instance.quantity,
      'isSuperOffer': instance.isSuperOffer,
    };

_PurchaseRecordModel _$PurchaseRecordModelFromJson(Map<String, dynamic> json) =>
    _PurchaseRecordModel(
      id: json['id'] as String,
      purchasedAt: _dateTimeFromIso(json['purchasedAt']),
      totalPesos: (json['totalPesos'] as num).toInt(),
      lines: (json['lines'] as List<dynamic>)
          .map((e) => PurchaseLineModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PurchaseRecordModelToJson(
  _PurchaseRecordModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'purchasedAt': _dateTimeToUtcIso(instance.purchasedAt),
  'totalPesos': instance.totalPesos,
  'lines': instance.lines,
};
