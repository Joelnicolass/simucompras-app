import 'package:flutter/material.dart';

import '../../core/theme/meli_colors.dart';
import 'category_avatar_chip.dart';

/// Carrusel horizontal de categorías (stateless, solo UI).
class CategoryAvatarCarousel extends StatelessWidget {
  const CategoryAvatarCarousel({
    super.key,
    required this.items,
    this.onCategoryTap,
    this.avatarSize = CategoryAvatarChipLayout.defaultAvatarSize,
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  });

  final List<CategoryAvatarData> items;
  final void Function(CategoryAvatarData item)? onCategoryTap;
  final double avatarSize;
  final EdgeInsets padding;

  double get _height => CategoryAvatarChipLayout.carouselHeight(
        avatarSize: avatarSize,
        padding: padding,
      );

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return SizedBox(
        height: _height,
        child: const Center(
          child: Text(
            'Sin categorías',
            style: TextStyle(color: MeliColors.textSecondary),
          ),
        ),
      );
    }

    return SizedBox(
      height: _height,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: padding,
        itemCount: items.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final item = items[index];
          return CategoryAvatarChip(
            data: item,
            size: avatarSize,
            onTap: onCategoryTap == null ? null : () => onCategoryTap!(item),
          );
        },
      ),
    );
  }
}
