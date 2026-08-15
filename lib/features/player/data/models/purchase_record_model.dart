import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_record_model.freezed.dart';
part 'purchase_record_model.g.dart';

@freezed
abstract class PurchaseLineModel with _$PurchaseLineModel {
  const factory PurchaseLineModel({
    required String productId,
    required String title,
    String? thumbnailUrl,
    required double unitPrice,
    required int quantity,
    @Default(false) bool isSuperOffer,
    String? categoryId,
    @Default(0) int soldQuantity,
  }) = _PurchaseLineModel;

  factory PurchaseLineModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseLineModelFromJson(json);
}

@freezed
abstract class PurchaseRecordModel with _$PurchaseRecordModel {
  const factory PurchaseRecordModel({
    required String id,
    @JsonKey(toJson: _dateTimeToUtcIso, fromJson: _dateTimeFromIso)
    required DateTime purchasedAt,
    required int totalPesos,
    required List<PurchaseLineModel> lines,
  }) = _PurchaseRecordModel;

  factory PurchaseRecordModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseRecordModelFromJson(json);
}

String _dateTimeToUtcIso(DateTime value) => value.toUtc().toIso8601String();

DateTime _dateTimeFromIso(Object? value) =>
    DateTime.parse(value! as String).toLocal();
