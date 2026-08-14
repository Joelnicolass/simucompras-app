import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/components/app_hero.dart';
import '../../../../shared/components/product_card.dart';
import '../../../../shared/components/skeletons.dart';
import '../../../../shared/game/game_pricing.dart';
import '../../../../shared/utils/price_format.dart';
import '../../../player/presentation/providers/favorites_provider.dart';
import '../../domain/entities/catalog_product.dart';
import '../navigation/product_route_args.dart';

/// Grilla 2xN de [ProductCard] con alto exacto por fila (sin saltos).
///
/// Compartida entre home, búsqueda y categoría. En modo scrolleable soporta
/// scroll infinito con [onEndReached] y un footer skeleton.
class ProductResultsGrid extends StatelessWidget {
  const ProductResultsGrid({
    super.key,
    required this.products,
    this.shrinkWrap = false,
    this.padding = EdgeInsets.zero,
    this.onProductTap,
    this.onEndReached,
    this.showFooterLoader = false,
  });

  final List<CatalogProduct> products;

  /// true para embeber en un scroll padre (ej: ListView de la home).
  final bool shrinkWrap;

  final EdgeInsetsGeometry padding;
  final void Function(CatalogProduct product)? onProductTap;

  /// Se dispara al acercarse al final del scroll (pedir página siguiente).
  final VoidCallback? onEndReached;

  /// Muestra placeholders al pie mientras hay más páginas por cargar.
  final bool showFooterLoader;

  static const _crossAxisCount = 2;
  static const _spacing = 8.0;

  /// Distancia al fondo (px) que gatilla [onEndReached].
  static const _endReachedThreshold = 600.0;

  double _itemWidth(double maxWidth) =>
      (maxWidth - _spacing * (_crossAxisCount - 1)) / _crossAxisCount;

  SliverGridDelegate _gridDelegate(double itemWidth) =>
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _crossAxisCount,
        mainAxisSpacing: _spacing,
        crossAxisSpacing: _spacing,
        // Alto exacto de la card: imagen cuadrada + bloque de info.
        mainAxisExtent: ProductCardLayout.cardHeightFor(itemWidth),
      );

  Widget _buildItem(BuildContext context, int index) {
    final product = products[index];
    return ProductGridItem(
      product: product,
      onTap: onProductTap == null ? null : () => onProductTap!(product),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (shrinkWrap) {
      return Padding(
        padding: padding,
        child: LayoutBuilder(
          builder: (context, constraints) => GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: products.length,
            gridDelegate: _gridDelegate(_itemWidth(constraints.maxWidth)),
            itemBuilder: _buildItem,
          ),
        ),
      );
    }

    final resolvedPadding = padding.resolve(Directionality.of(context));

    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (onEndReached != null &&
            notification.metrics.extentAfter < _endReachedThreshold) {
          onEndReached!();
        }
        return false;
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          final itemWidth = _itemWidth(
            constraints.maxWidth - resolvedPadding.horizontal,
          );
          return CustomScrollView(
            slivers: [
              SliverPadding(
                padding: resolvedPadding,
                sliver: SliverGrid(
                  gridDelegate: _gridDelegate(itemWidth),
                  delegate: SliverChildBuilderDelegate(
                    _buildItem,
                    childCount: products.length,
                  ),
                ),
              ),
              if (showFooterLoader)
                SliverPadding(
                  padding: EdgeInsets.fromLTRB(
                    resolvedPadding.left,
                    0,
                    resolvedPadding.right,
                    resolvedPadding.bottom + 8,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: SkeletonPulse(
                      child: Row(
                        children: [
                          for (var i = 0; i < _crossAxisCount; i++) ...[
                            if (i > 0) const SizedBox(width: _spacing),
                            Expanded(
                              child: SizedBox(
                                height: itemWidth,
                                child: const SkeletonBox(
                                  borderRadius: ProductCardLayout.cardRadius,
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

class ProductGridItem extends ConsumerWidget {
  const ProductGridItem({super.key, required this.product, this.onTap});

  final CatalogProduct product;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final offer = product.bestOffer;
    final display = GamePricing.resolve(
      productId: product.id,
      offerPrice: offer?.price,
      originalPrice: offer?.originalPrice,
    );
    final priceText = PriceFormat.ars(display.amount);
    final originalText = display.originalAmount != null
        ? PriceFormat.ars(display.originalAmount!)
        : null;
    final discount = PriceFormat.discountPercent(
      display.originalAmount,
      display.amount,
    );
    final installments = PriceFormat.installmentsArs(display.amount);
    final shipping = offer?.freeShipping == true ? 'Envío gratis' : null;
    final isFavorite =
        ref.watch(favoritesProvider).value?.contains(product.id) ?? false;

    return ProductCard(
      title: product.title,
      heroTag: AppHeroTags.productImage(product.id),
      priceText: priceText,
      imageUrl:
          product.thumbnailUrl ??
          (product.pictureUrls.isNotEmpty ? product.pictureUrls.first : null),
      originalPriceText: originalText,
      discountLabel: discount,
      installmentsText: installments,
      shippingLabel: shipping,
      isSuperOffer: display.isSuperOffer,
      isFavorite: isFavorite,
      onFavoriteTap: () =>
          ref.read(favoritesProvider.notifier).toggle(product.id),
      onTap: onTap ??
          () => context.push(
            '/product/${product.id}',
            extra: ProductRouteArgs(
              imageUrl: product.thumbnailUrl ??
                  (product.pictureUrls.isNotEmpty
                      ? product.pictureUrls.first
                      : null),
              title: product.title,
            ),
          ),
    );
  }
}
