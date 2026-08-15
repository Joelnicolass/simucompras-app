import '../entities/checkout_result.dart';
import '../errors/cart_failure.dart';
import '../repositories/cart_repository.dart';
import '../repositories/pesos_account.dart';
import '../repositories/purchase_recorder.dart';

export '../entities/checkout_result.dart';

class Checkout {
  const Checkout(this._cart, this._pesos, this._recorder);

  final CartRepository _cart;
  final PesosAccount _pesos;
  final PurchaseRecorder _recorder;

  Future<CheckoutResult> call() async {
    final cart = await _cart.getCart();
    if (cart.isEmpty) throw const CartEmpty();

    final total = cart.totalPesos.round();
    if (total <= 0) throw const CartEmpty();

    await _pesos.debit(total);

    final now = DateTime.now();
    final orderId = 'ORD-${now.millisecondsSinceEpoch}';

    await _recorder.recordPurchase(
      orderId: orderId,
      purchasedAt: now,
      totalPesos: total,
      lines: cart.lines
          .map(
            (l) => PurchaseRecorderLine(
              productId: l.productId,
              title: l.title,
              thumbnailUrl: l.thumbnailUrl,
              unitPrice: l.unitPrice,
              quantity: l.quantity,
              isSuperOffer: l.isSuperOffer,
              categoryId: l.categoryId,
            ),
          )
          .toList(),
    );

    await _cart.clear();

    return CheckoutResult(
      orderId: orderId,
      totalPesos: total,
      lines: cart.lines,
      purchasedAt: now,
    );
  }
}
