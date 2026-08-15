import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_record.freezed.dart';

@freezed
abstract class PurchaseLine with _$PurchaseLine {
  const PurchaseLine._();

  const factory PurchaseLine({
    required String productId,
    required String title,
    String? thumbnailUrl,
    required double unitPrice,
    required int quantity,
    @Default(false) bool isSuperOffer,
    String? categoryId,

    /// Unidades ya revendidas (0..quantity).
    @Default(0) int soldQuantity,
  }) = _PurchaseLine;

  int get availableQuantity =>
      (quantity - soldQuantity).clamp(0, quantity);

  bool get isFullySold => availableQuantity <= 0;
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

/// Línea de inventario lista para UI (orden + producto con stock).
@freezed
abstract class InventoryItem with _$InventoryItem {
  const InventoryItem._();

  const factory InventoryItem({
    required String orderId,
    required DateTime purchasedAt,
    required PurchaseLine line,
  }) = _InventoryItem;

  int get availableQuantity => line.availableQuantity;
}
