import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/cart.dart';

part 'checkout_result.freezed.dart';

@freezed
abstract class CheckoutResult with _$CheckoutResult {
  const factory CheckoutResult({
    required String orderId,
    required int totalPesos,
    required List<CartLine> lines,
    required DateTime purchasedAt,
  }) = _CheckoutResult;
}
