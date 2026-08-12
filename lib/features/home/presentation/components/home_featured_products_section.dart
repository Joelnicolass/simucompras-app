import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/meli_colors.dart';
import '../../../../shared/components/product_card.dart';
import '../../../../shared/utils/price_format.dart';
import '../../../catalog/domain/entities/catalog_product.dart';
import '../../../catalog/presentation/providers/featured_products_provider.dart';
import 'home_section_header.dart';

/// Grilla de productos destacados (cards compartidas + datos reales).
class HomeFeaturedProductsSection extends ConsumerWidget {
  const HomeFeaturedProductsSection({
    super.key,
    this.title = 'Inspirado en lo último que viste',
    this.query = 'smart tv',
  });

  final String title;
  final String query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(featuredProductsProvider(query: query, limit: 6));

    return ColoredBox(
      color: MeliColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ColoredBox(
            color: MeliColors.surface,
            child: HomeSectionHeader(title: title),
          ),
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
              return Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    const crossAxisCount = 2;
                    const spacing = 8.0;
                    final itemWidth = (constraints.maxWidth -
                            spacing * (crossAxisCount - 1)) /
                        crossAxisCount;
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: list.length,
                      gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        mainAxisSpacing: spacing,
                        crossAxisSpacing: spacing,
                        // Alto exacto de la card: imagen cuadrada + info.
                        mainAxisExtent:
                            ProductCardLayout.cardHeightFor(itemWidth),
                      ),
                      itemBuilder: (context, index) {
                        return _ProductGridItem(product: list[index]);
                      },
                    );
                  },
                ),
              );
            },
            loading: () => const Padding(
              padding: EdgeInsets.symmetric(vertical: 32),
              child: Center(
                child: SizedBox(
                  width: 28,
                  height: 28,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ),
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

class _ProductGridItem extends StatefulWidget {
  const _ProductGridItem({required this.product});

  final CatalogProduct product;

  @override
  State<_ProductGridItem> createState() => _ProductGridItemState();
}

/// Estado local mínimo solo para el favorito dummy (efímero de UI).
class _ProductGridItemState extends State<_ProductGridItem> {
  bool _favorite = false;

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    final offer = product.bestOffer;
    final priceText = offer != null
        ? PriceFormat.ars(offer.price)
        : 'Sin precio';
    final discount = offer == null
        ? null
        : PriceFormat.discountPercent(offer.originalPrice, offer.price);
    final shipping = offer?.freeShipping == true ? 'Envío gratis' : null;

    return ProductCard(
      title: product.title,
      priceText: priceText,
      imageUrl: product.thumbnailUrl ??
          (product.pictureUrls.isNotEmpty ? product.pictureUrls.first : null),
      discountLabel: discount,
      shippingLabel: shipping,
      isFavorite: _favorite,
      onFavoriteTap: () => setState(() => _favorite = !_favorite),
      onTap: () {
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
