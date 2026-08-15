import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.freezed.dart';

@freezed
abstract class CartLine with _$CartLine {
  const CartLine._();

  const factory CartLine({
    required String productId,
    required String title,
    String? thumbnailUrl,
    required double unitPrice,
    double? originalUnitPrice,
    required int quantity,
    @Default(false) bool isSuperOffer,
    String? categoryId,
  }) = _CartLine;

  double get lineTotal => unitPrice * quantity;
}

@freezed
abstract class Cart with _$Cart {
  const Cart._();

  const factory Cart({
    @Default([]) List<CartLine> lines,
  }) = _Cart;

  int get itemCount => lines.fold(0, (sum, l) => sum + l.quantity);

  double get totalPesos =>
      lines.fold(0.0, (sum, l) => sum + l.lineTotal);

  bool get isEmpty => lines.isEmpty;
}
