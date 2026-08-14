import 'dart:math';

import '../../core/config/game_config.dart';

/// Precio simulado y estable para productos sin oferta activa.
///
/// Determinístico por seed (id del producto). Rangos desde [GameConfig].
abstract final class ReferencePrice {
  static double stableFor(String seed) {
    final random = Random(seed.hashCode);
    const min = GameConfig.priceMin;
    const max = GameConfig.priceMax;
    if (max <= min) return _roundMarketplace(min);

    // Log-uniforme entre min y max.
    final logMin = log(min);
    final logMax = log(max);
    final magnitude = exp(logMin + random.nextDouble() * (logMax - logMin));
    return _roundMarketplace(magnitude);
  }

  static double _roundMarketplace(double value) {
    const step = GameConfig.priceRoundTo;
    if (step <= 1) return value.roundToDouble();
    final units = max(1, (value / step).round());
    return units * step - 1;
  }
}
