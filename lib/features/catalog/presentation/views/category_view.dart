import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/meli_colors.dart';
import '../../../../shared/components/error_retry.dart';
import '../../../../shared/components/skeletons.dart';
import '../components/product_results_grid.dart';
import '../providers/search_results_provider.dart';

/// Listado de productos de una categoría.
class CategoryView extends ConsumerWidget {
  const CategoryView({
    super.key,
    required this.categoryId,
    required this.categoryName,
  });

  final String categoryId;
  final String categoryName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final results = ref.watch(searchResultsProvider(categoryId: categoryId));

    return Scaffold(
      backgroundColor: MeliColors.background,
      appBar: AppBar(
        backgroundColor: MeliColors.brand,
        foregroundColor: MeliColors.textDark,
        title: Text(
          categoryName,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: results.when(
        data: (data) {
          if (data.products.isEmpty) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Text(
                  'No encontramos publicaciones\nen esta categoría',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: MeliColors.textSecondary),
                ),
              ),
            );
          }
          return ProductResultsGrid(
            products: data.products,
            padding: const EdgeInsets.all(8),
            showFooterLoader: data.hasMore,
            onEndReached: () => ref
                .read(searchResultsProvider(categoryId: categoryId).notifier)
                .loadMore(),
          );
        },
        loading: () => const ProductGridSkeleton(
          padding: EdgeInsets.all(8),
        ),
        error: (error, _) => ErrorRetry(
          message: error.toString(),
          onRetry: () =>
              ref.invalidate(searchResultsProvider(categoryId: categoryId)),
        ),
      ),
    );
  }
}
