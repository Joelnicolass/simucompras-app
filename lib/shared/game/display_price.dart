import 'package:freezed_annotation/freezed_annotation.dart';

part 'display_price.freezed.dart';

/// Precio mostrado en UI / carrito (oferta real o simulación de juego).
@freezed
abstract class DisplayPrice with _$DisplayPrice {
  const DisplayPrice._();

  const factory DisplayPrice({
    /// Precio final en pesos (mismo número que ARS simulado).
    required double amount,

    /// Precio tachado si hay descuento / súper oferta.
    double? originalAmount,

    /// true si no vino de buy box MeLi.
    @Default(false) bool isSimulated,

    /// true si [GamePricing] aplicó descuento de súper oferta.
    @Default(false) bool isSuperOffer,
  }) = _DisplayPrice;

  double? get discountFraction {
    final original = originalAmount;
    if (original == null || original <= 0 || original <= amount) return null;
    return (original - amount) / original;
  }
}
