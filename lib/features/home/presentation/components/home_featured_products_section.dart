import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/meli_colors.dart';
import '../../../../shared/components/skeletons.dart';
import '../../../catalog/presentation/components/product_results_grid.dart';
import '../../../catalog/presentation/providers/featured_products_provider.dart';
import 'home_section_header.dart';

/// Grilla de productos destacados (cards compartidas + datos reales).
class HomeFeaturedProductsSection extends ConsumerWidget {
  const HomeFeaturedProductsSection({
    super.key,
    this.title = 'Inspirado en lo último que viste',
    required this.query,
  });

  final String title;
  final String query;

  static const _gridPadding = EdgeInsets.fromLTRB(8, 0, 8, 8);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(
      featuredProductsProvider(query: query, limit: 6),
    );

    return ColoredBox(
      color: MeliColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HomeSectionHeader(title: title),
          products.when(
            data: (list) {
              if (list.isEmpty) {
                return const Padding(
                  padding: EdgeInsets.all(24),
                  child: Text(
                    'No hay productos para mostrar',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: MeliColors.textSecondary),
                  ),
                );
              }
              return ProductResultsGrid(
                products: list,
                shrinkWrap: true,
                padding: _gridPadding,
              );
            },
            // Skeleton con las mismas proporciones que la grilla real.
            loading: () => const ProductGridSkeleton(
              itemCount: 6,
              shrinkWrap: true,
              padding: _gridPadding,
            ),
            error: (error, _) => Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    error.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 13,
                      color: MeliColors.textSecondary,
                    ),
                  ),
                  TextButton(
                    onPressed: () => ref.invalidate(
                      featuredProductsProvider(query: query, limit: 6),
                    ),
                    child: const Text('Reintentar'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
