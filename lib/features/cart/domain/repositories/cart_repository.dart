import '../entities/cart.dart';

abstract interface class CartRepository {
  Future<Cart> getCart();
  Future<Cart> addLine(CartLine line);
  Future<Cart> updateQuantity(String productId, int quantity);
  Future<Cart> removeLine(String productId);
  Future<Cart> clear();
}
