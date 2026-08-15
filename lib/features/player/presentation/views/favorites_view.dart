import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/meli_colors.dart';
import '../../../../shared/components/app_loader.dart';
import '../../../../shared/components/error_retry.dart';
import '../../../catalog/presentation/components/product_results_grid.dart';
import '../../../catalog/presentation/navigation/product_route_args.dart';
import '../providers/favorite_products_provider.dart';
import '../providers/favorites_provider.dart';

class FavoritesView extends ConsumerWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorites = ref.watch(favoritesProvider);
    final products = ref.watch(favoriteProductsProvider);

    return Scaffold(
      backgroundColor: MeliColors.background,
      appBar: AppBar(
        backgroundColor: MeliColors.brand,
        foregroundColor: MeliColors.textDark,
        automaticallyImplyLeading: false,
        title: const Text(
          'Favoritos',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: favorites.when(
        data: (ids) {
          if (ids.isEmpty) {
            return const Center(
              child: Text(
                'Todavía no marcaste favoritos',
                style: TextStyle(color: MeliColors.textSecondary),
              ),
            );
          }
          return products.when(
            data: (list) {
              if (list.isEmpty) {
                return ErrorRetry(
                  message: 'No pudimos cargar tus favoritos',
                  onRetry: () => ref.invalidate(favoriteProductsProvider),
                );
              }
              return ProductResultsGrid(
                products: list,
                padding: const EdgeInsets.all(8),
                onProductTap: (p) => context.push(
                  '/product/${p.id}',
                  extra: ProductRouteArgs(
                    imageUrl: p.thumbnailUrl ??
                        (p.pictureUrls.isNotEmpty
                            ? p.pictureUrls.first
                            : null),
                    title: p.title,
                  ),
                ),
              );
            },
            loading: () => const AppLoader(message: 'Cargando favoritos…'),
            error: (e, _) => ErrorRetry(
              message: e.toString(),
              onRetry: () => ref.invalidate(favoriteProductsProvider),
            ),
          );
        },
        loading: () => const AppLoader(),
        error: (e, _) => ErrorRetry(
          message: e.toString(),
          onRetry: () => ref.invalidate(favoritesProvider),
        ),
      ),
    );
  }
}
