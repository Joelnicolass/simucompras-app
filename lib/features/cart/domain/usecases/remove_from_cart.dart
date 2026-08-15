import '../entities/cart.dart';
import '../repositories/cart_repository.dart';

class RemoveFromCart {
  const RemoveFromCart(this._repository);
  final CartRepository _repository;

  Future<Cart> call(String productId) => _repository.removeLine(productId);
}
