import 'dart:math';

import '../../core/config/game_config.dart';
import '../utils/reference_price.dart';
import 'display_price.dart';

/// Resuelve el precio de juego/UI a partir de id + oferta opcional.
///
/// - Con [offerPrice]: usa el precio real.
/// - Sin oferta: [ReferencePrice] (rangos de [GameConfig]).
/// - Con chance de [GameConfig.superOfferChance]: aplica descuento fuerte
///   estable por productId + día calendario.
abstract final class GamePricing {
  static DisplayPrice resolve({
    required String productId,
    double? offerPrice,
    double? originalPrice,
    DateTime? now,
  }) {
    final baseAmount = offerPrice ?? ReferencePrice.stableFor(productId);
    final isSimulated = offerPrice == null;

    final day = now ?? DateTime.now();
    final dayKey = '${day.year}-${day.month}-${day.day}';
    final random = Random('$productId|$dayKey'.hashCode);

    if (random.nextDouble() >= GameConfig.superOfferChance) {
      final original = originalPrice != null && originalPrice > baseAmount
          ? originalPrice
          : null;
      return DisplayPrice(
        amount: baseAmount,
        originalAmount: original,
        isSimulated: isSimulated,
      );
    }

    final listPrice = originalPrice != null && originalPrice > baseAmount
        ? originalPrice
        : baseAmount;
    const span =
        GameConfig.superOfferMaxDiscount - GameConfig.superOfferMinDiscount;
    final discount =
        GameConfig.superOfferMinDiscount + random.nextDouble() * span;
    final discounted = _roundMarketplace(listPrice * (1 - discount));
    final amount = discounted < 1 ? 1.0 : discounted;

    return DisplayPrice(
      amount: amount,
      originalAmount: listPrice > amount ? listPrice : null,
      isSimulated: isSimulated,
      isSuperOffer: true,
    );
  }

  static double _roundMarketplace(double value) {
    const step = GameConfig.priceRoundTo;
    if (step <= 1) return value.roundToDouble();
    final units = max(1, (value / step).round());
    return units * step - 1;
  }
}
