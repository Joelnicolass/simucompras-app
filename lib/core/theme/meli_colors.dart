import 'package:flutter/material.dart';

/// Tokens de color del clon MeLi (UI Kit Andes).
abstract final class MeliColors {
  static const Color brand = Color(0xFFFFE600);
  static const Color background = Color(0xFFEBEBEB);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color textDark = Color(0xFF000000);
  static const Color textSecondary = Color(0xFF707070);
  static const Color textMuted = Color(0xFFBFBFBF);
  static const Color action = Color(0xFF3484FA);
  static const Color success = Color(0xFF00A650);
  static const Color discount = Color(0xFF00A650);
  static const Color danger = Color(0xFFE74C3C);
  static const Color divider = Color(0xFFE5E5E5);
  static const Color navInactive = Color(0xFF8C8C8C);
  static const Color subscriptionStart = Color(0xFF2D3277);
  static const Color subscriptionEnd = Color(0xFFA90F90);
  static const Color darkBanner = Color(0xFF0B1A38);

  /// Fondos para avatares de categoría: pasteles saturados y bien separados
  /// por matiz (derivados de brand / action / success / subscription).
  static const List<Color> categoryAvatarBackgrounds = [
    Color(0xFFFFE566), // amarillo brand
    Color(0xFF7EB6FF), // azul action
    Color(0xFF6FDF9F), // verde success
    Color(0xFF9B95E8), // violeta subscription
    Color(0xFFE86BC4), // magenta subscription
    Color(0xFFFF9F5A), // naranja cálido
    Color(0xFF5AD4E8), // celeste
    Color(0xFFFF7A8A), // coral
  ];

  /// Color estable por seed (p. ej. category id), no cambia en rebuilds.
  static Color categoryAvatarBackgroundFor(String seed) {
    if (categoryAvatarBackgrounds.isEmpty) return background;
    final index = seed.hashCode.abs() % categoryAvatarBackgrounds.length;
    return categoryAvatarBackgrounds[index];
  }
}
