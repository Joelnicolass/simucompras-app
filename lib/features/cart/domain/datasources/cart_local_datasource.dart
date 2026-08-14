import '../entities/cart.dart';

abstract interface class CartLocalDatasource {
  Future<Cart> readCart();
  Future<void> saveCart(Cart cart);
}
