import 'package:flutter/material.dart';

import '../../core/theme/meli_colors.dart';
import '../catalog/category_icon_resolver.dart';

/// Layout del chip de categoría (evita overflow en carruseles de altura fija).
abstract final class CategoryAvatarChipLayout {
  static const double defaultAvatarSize = 64;
  static const double horizontalPadding = 6;
  static const double labelGap = 6;
  static const double labelFontSize = 11;
  static const double labelHeightFactor = 1.15;
  static const int labelMaxLines = 2;

  static double labelBlockHeight({
    double fontSize = labelFontSize,
    double heightFactor = labelHeightFactor,
    int maxLines = labelMaxLines,
  }) {
    return fontSize * heightFactor * maxLines;
  }

  static double chipWidth(double avatarSize) =>
      avatarSize + (horizontalPadding * 2);

  static double chipHeight(double avatarSize) =>
      avatarSize + labelGap + labelBlockHeight();

  static double carouselHeight({
    double avatarSize = defaultAvatarSize,
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  }) {
    return chipHeight(avatarSize) + padding.vertical;
  }
}

/// Datos de UI para un chip de categoría (sin entidades de dominio).
class CategoryAvatarData {
  const CategoryAvatarData({
    required this.id,
    required this.label,
    this.imageUrl,
    this.icon,
  });

  final String id;
  final String label;
  final String? imageUrl;
  final IconData? icon;

  IconData get resolvedIcon =>
      icon ?? CategoryIconResolver.resolveIcon(id: id, name: label);
}

/// Botón redondo tipo avatar + etiqueta (stateless).
class CategoryAvatarChip extends StatelessWidget {
  const CategoryAvatarChip({
    super.key,
    required this.data,
    this.size = CategoryAvatarChipLayout.defaultAvatarSize,
    this.onTap,
  });

  final CategoryAvatarData data;
  final double size;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final hasImage = data.imageUrl != null && data.imageUrl!.trim().isNotEmpty;
    final background = MeliColors.categoryAvatarBackgroundFor(data.id);
    final width = CategoryAvatarChipLayout.chipWidth(size);
    final labelHeight = CategoryAvatarChipLayout.labelBlockHeight();

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        width: width,
        height: CategoryAvatarChipLayout.chipHeight(size),
        child: Column(
          children: [
            Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: background,
                border: Border.all(color: MeliColors.divider),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 4,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              clipBehavior: Clip.antiAlias,
              child: hasImage
                  ? Image.network(
                      data.imageUrl!,
                      fit: BoxFit.cover,
                      errorBuilder: (_, _, _) => _IconFace(
                        icon: data.resolvedIcon,
                        size: size,
                        background: background,
                      ),
                    )
                  : _IconFace(
                      icon: data.resolvedIcon,
                      size: size,
                      background: background,
                    ),
            ),
            const SizedBox(height: CategoryAvatarChipLayout.labelGap),
            SizedBox(
              height: labelHeight,
              width: width,
              child: Text(
                data.label,
                textAlign: TextAlign.center,
                maxLines: CategoryAvatarChipLayout.labelMaxLines,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: CategoryAvatarChipLayout.labelFontSize,
                  height: CategoryAvatarChipLayout.labelHeightFactor,
                  color: MeliColors.textDark,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _IconFace extends StatelessWidget {
  const _IconFace({
    required this.icon,
    required this.size,
    required this.background,
  });

  final IconData icon;
  final double size;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: background,
      child: Center(
        child: Icon(
          icon,
          size: size * 0.42,
          color: MeliColors.textDark,
        ),
      ),
    );
  }
}
