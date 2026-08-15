/// Contrato para registrar una compra completada (historial del jugador).
abstract interface class PurchaseRecorder {
  Future<void> recordPurchase({
    required String orderId,
    required DateTime purchasedAt,
    required int totalPesos,
    required List<PurchaseRecorderLine> lines,
  });
}

class PurchaseRecorderLine {
  const PurchaseRecorderLine({
    required this.productId,
    required this.title,
    this.thumbnailUrl,
    required this.unitPrice,
    required this.quantity,
    this.isSuperOffer = false,
  });

  final String productId;
  final String title;
  final String? thumbnailUrl;
  final double unitPrice;
  final int quantity;
  final bool isSuperOffer;
}
