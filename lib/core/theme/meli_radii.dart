import 'package:flutter/material.dart';

/// Radios de borde del design system (Andes / MeLi).
///
/// Usar estos valores en vez de literales sueltos (`8`, `12`, `14`…) para
/// que cards, botones y sheets se vean coherentes entre pantallas.
abstract final class MeliRadii {
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;

  /// Cards de superficie (producto, línea de carrito, checkout).
  static const double card = sm;

  /// Botones filled / outlined.
  static const double button = sm;

  /// Chips / pills.
  static const double pill = xl;

  static const BorderRadius cardAll = BorderRadius.all(Radius.circular(card));
  static const BorderRadius buttonAll =
      BorderRadius.all(Radius.circular(button));
  static const BorderRadius imageThumb =
      BorderRadius.all(Radius.circular(xs));
  static const BorderRadius sheetTop =
      BorderRadius.vertical(top: Radius.circular(lg));
}
