import '../../../../core/config/game_config.dart';
import '../../domain/datasources/cart_local_datasource.dart';
import '../../domain/entities/cart.dart';
import '../../domain/errors/cart_failure.dart';
import '../../domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  CartRepositoryImpl(this._local);

  final CartLocalDatasource _local;

  @override
  Future<Cart> getCart() async {
    try {
      return await _local.readCart();
    } catch (e) {
      throw CartStorageUnavailable(e);
    }
  }

  @override
  Future<Cart> addLine(CartLine line) async {
    try {
      final cart = await _local.readCart();
      final lines = [...cart.lines];
      final index = lines.indexWhere((l) => l.productId == line.productId);
      if (index >= 0) {
        final existing = lines[index];
        final qty = (existing.quantity + line.quantity)
            .clamp(1, GameConfig.maxQuantityPerLine);
        lines[index] = existing.copyWith(
          quantity: qty,
          unitPrice: line.unitPrice,
          originalUnitPrice: line.originalUnitPrice,
          isSuperOffer: line.isSuperOffer,
          title: line.title,
          thumbnailUrl: line.thumbnailUrl ?? existing.thumbnailUrl,
          categoryId: line.categoryId ?? existing.categoryId,
        );
      } else {
        lines.add(line);
      }
      final updated = Cart(lines: lines);
      await _local.saveCart(updated);
      return updated;
    } catch (e) {
      if (e is CartFailure) rethrow;
      throw CartStorageUnavailable(e);
    }
  }

  @override
  Future<Cart> updateQuantity(String productId, int quantity) async {
    try {
      final cart = await _local.readCart();
      final lines = cart.lines
          .map(
            (l) => l.productId == productId
                ? l.copyWith(quantity: quantity)
                : l,
          )
          .toList();
      final updated = Cart(lines: lines);
      await _local.saveCart(updated);
      return updated;
    } catch (e) {
      throw CartStorageUnavailable(e);
    }
  }

  @override
  Future<Cart> removeLine(String productId) async {
    try {
      final cart = await _local.readCart();
      final updated = Cart(
        lines: cart.lines.where((l) => l.productId != productId).toList(),
      );
      await _local.saveCart(updated);
      return updated;
    } catch (e) {
      throw CartStorageUnavailable(e);
    }
  }

  @override
  Future<Cart> clear() async {
    try {
      const empty = Cart();
      await _local.saveCart(empty);
      return empty;
    } catch (e) {
      throw CartStorageUnavailable(e);
    }
  }
}
