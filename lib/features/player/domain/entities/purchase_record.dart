import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_record.freezed.dart';

@freezed
abstract class PurchaseLine with _$PurchaseLine {
  const factory PurchaseLine({
    required String productId,
    required String title,
    String? thumbnailUrl,
    required double unitPrice,
    required int quantity,
    @Default(false) bool isSuperOffer,
  }) = _PurchaseLine;
}

@freezed
abstract class PurchaseRecord with _$PurchaseRecord {
  const PurchaseRecord._();

  const factory PurchaseRecord({
    required String id,
    required DateTime purchasedAt,
    required int totalPesos,
    required List<PurchaseLine> lines,
  }) = _PurchaseRecord;
}
