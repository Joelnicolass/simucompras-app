import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/components/category_avatar_chip.dart';
import '../../../../shared/components/category_carousel_section.dart';
import '../../../catalog/presentation/providers/root_categories_provider.dart';

/// Carrusel de categorías raíz en home (usa provider + componentes shared).
class HomeCategoriesCarouselSection extends ConsumerWidget {
  const HomeCategoriesCarouselSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(rootCategoriesProvider);

    return categories.when(
      data: (list) => CategoryCarouselSection(
        items: [
          for (final c in list)
            CategoryAvatarData(id: c.id, label: c.name, imageUrl: c.pictureUrl),
        ],
        onCategoryTap: (item) {
          context.push(
            Uri(
              path: '/category/${item.id}',
              queryParameters: {'name': item.label},
            ).toString(),
          );
        },
      ),
      loading: () => const CategoryCarouselSection(items: [], isLoading: true),
      error: (error, _) => CategoryCarouselSection(
        items: const [],
        errorMessage: error.toString(),
        onRetry: () => ref.invalidate(rootCategoriesProvider),
      ),
    );
  }
}
