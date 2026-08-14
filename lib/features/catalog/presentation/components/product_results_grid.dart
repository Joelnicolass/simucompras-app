import 'package:flutter/material.dart';

import '../../../../shared/components/product_card.dart';
import '../../../../shared/components/skeletons.dart';
import '../../../../shared/utils/price_format.dart';
import '../../../../shared/utils/reference_price.dart';
import '../../domain/entities/catalog_product.dart';

/// Grilla 2xN de [ProductCard] con alto exacto por fila (sin saltos).
///
/// Compartida entre home, búsqueda y categoría. Stateless: el favorito
/// dummy es estado efímero de cada ítem. En modo scrolleable soporta
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

class ProductGridItem extends StatefulWidget {
  const ProductGridItem({super.key, required this.product, this.onTap});

  final CatalogProduct product;
  final VoidCallback? onTap;

  @override
  State<ProductGridItem> createState() => _ProductGridItemState();
}

/// Estado local mínimo solo para el favorito dummy (efímero de UI).
class _ProductGridItemState extends State<ProductGridItem> {
  bool _favorite = false;

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    final offer = product.bestOffer;
    // Sin oferta activa: precio simulado estable (app de simulación).
    final price = offer?.price ?? ReferencePrice.stableFor(product.id);
    final priceText = PriceFormat.ars(price);
    final original = offer?.originalPrice;
    final originalText = original != null && original > price
        ? PriceFormat.ars(original)
        : null;
    final discount = offer == null
        ? null
        : PriceFormat.discountPercent(offer.originalPrice, offer.price);
    final installments = PriceFormat.installmentsArs(price);
    final shipping = offer?.freeShipping == true ? 'Envío gratis' : null;

    return ProductCard(
      title: product.title,
      priceText: priceText,
      imageUrl:
          product.thumbnailUrl ??
          (product.pictureUrls.isNotEmpty ? product.pictureUrls.first : null),
      originalPriceText: originalText,
      discountLabel: discount,
      installmentsText: installments,
      shippingLabel: shipping,
      isFavorite: _favorite,
      onFavoriteTap: () => setState(() => _favorite = !_favorite),
      onTap: widget.onTap ??
          () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(product.title),
                duration: const Duration(seconds: 1),
              ),
            );
          },
    );
  }
}
