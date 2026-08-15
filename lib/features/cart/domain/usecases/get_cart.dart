import '../entities/cart.dart';
import '../repositories/cart_repository.dart';

class GetCart {
  const GetCart(this._repository);
  final CartRepository _repository;

  Future<Cart> call() => _repository.getCart();
}
