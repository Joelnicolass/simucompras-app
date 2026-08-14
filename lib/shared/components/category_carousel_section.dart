import 'package:flutter/material.dart';

import '../../core/theme/meli_colors.dart';
import 'category_avatar_carousel.dart';
import 'category_avatar_chip.dart';
import 'skeletons.dart';

/// Sección compartida: título + carrusel de categorías avatar.
class CategoryCarouselSection extends StatelessWidget {
  const CategoryCarouselSection({
    super.key,
    required this.title,
    required this.items,
    this.onCategoryTap,
    this.isLoading = false,
    this.errorMessage,
    this.onRetry,
  });

  final String title;
  final List<CategoryAvatarData> items;
  final void Function(CategoryAvatarData item)? onCategoryTap;
  final bool isLoading;
  final String? errorMessage;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: MeliColors.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 4),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: MeliColors.textDark,
              ),
            ),
          ),
          if (isLoading)
            // Skeleton con las mismas medidas del carrusel: sin saltos.
            const CategoryCarouselSkeleton()
          else if (errorMessage != null)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      errorMessage!,
                      style: const TextStyle(
                        fontSize: 13,
                        color: MeliColors.textSecondary,
                      ),
                    ),
                  ),
                  if (onRetry != null)
                    TextButton(
                      onPressed: onRetry,
                      child: const Text('Reintentar'),
                    ),
                ],
              ),
            )
          else
            CategoryAvatarCarousel(
              items: items,
              onCategoryTap: onCategoryTap,
            ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
