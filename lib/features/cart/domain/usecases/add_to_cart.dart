import '../../../../core/config/game_config.dart';
import '../entities/cart.dart';
import '../repositories/cart_repository.dart';

class AddToCart {
  const AddToCart(this._repository);
  final CartRepository _repository;

  Future<Cart> call(CartLine line) {
    final qty = line.quantity.clamp(1, GameConfig.maxQuantityPerLine);
    return _repository.addLine(line.copyWith(quantity: qty));
  }
}
