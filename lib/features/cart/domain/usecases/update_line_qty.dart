import '../../../../core/config/game_config.dart';
import '../entities/cart.dart';
import '../repositories/cart_repository.dart';

class UpdateLineQty {
  const UpdateLineQty(this._repository);
  final CartRepository _repository;

  Future<Cart> call(String productId, int quantity) {
    final qty = quantity.clamp(0, GameConfig.maxQuantityPerLine);
    if (qty == 0) return _repository.removeLine(productId);
    return _repository.updateQuantity(productId, qty);
  }
}
