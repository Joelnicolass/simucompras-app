import '../../../cart/domain/repositories/purchase_recorder.dart';
import '../../domain/entities/purchase_record.dart';
import '../../domain/repositories/player_repository.dart';

class PlayerPurchaseRecorder implements PurchaseRecorder {
  PlayerPurchaseRecorder(this._player);

  final PlayerRepository _player;

  @override
  Future<void> recordPurchase({
    required String orderId,
    required DateTime purchasedAt,
    required int totalPesos,
    required List<PurchaseRecorderLine> lines,
  }) {
    return _player.addPurchase(
      PurchaseRecord(
        id: orderId,
        purchasedAt: purchasedAt,
        totalPesos: totalPesos,
        lines: lines
            .map(
              (l) => PurchaseLine(
                productId: l.productId,
                title: l.title,
                thumbnailUrl: l.thumbnailUrl,
                unitPrice: l.unitPrice,
                quantity: l.quantity,
                isSuperOffer: l.isSuperOffer,
              ),
            )
            .toList(),
      ),
    );
  }
}
