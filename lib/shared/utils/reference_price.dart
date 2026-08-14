import 'dart:math';

/// Precio simulado y estable para productos de catálogo sin oferta activa
/// (la API de MeLi no expone precio si no hay buy box).
///
/// Determinístico por seed (id del producto): no cambia entre rebuilds ni
/// sesiones. Distribución log-uniforme para que haya tanto precios chicos
/// como grandes, redondeado a X.999 al estilo marketplace.
abstract final class ReferencePrice {
  static const double _base = 10000;

  /// Décadas por encima de [_base]: 10k → 1M.
  static const double _decades = 2;

  static double stableFor(String seed) {
    final random = Random(seed.hashCode);
    final magnitude = _base * pow(10, random.nextDouble() * _decades);
    final thousands = max(1, (magnitude / 1000).round());
    return thousands * 1000 - 1;
  }
}
