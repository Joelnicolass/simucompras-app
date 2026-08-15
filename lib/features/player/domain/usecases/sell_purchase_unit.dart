import '../entities/sell_result.dart';
import '../repositories/player_repository.dart';

class SellPurchaseUnit {
  const SellPurchaseUnit(this._repository);
  final PlayerRepository _repository;

  Future<SellResult> call({
    required String orderId,
    required String productId,
  }) =>
      _repository.sellPurchaseUnit(orderId: orderId, productId: productId);
}
