import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/meli_colors.dart';
import '../../../../shared/components/action_footer.dart';
import '../../../../shared/components/app_animated_text.dart';
import '../../../../shared/components/app_hero.dart';
import '../../../../shared/components/cart_icon_button.dart';
import '../../../../shared/components/error_retry.dart';
import '../../../../shared/components/network_image_box.dart';
import '../../../../shared/components/skeletons.dart';
import '../../../../shared/game/game_pricing.dart';
import '../../../../shared/utils/price_format.dart';
import '../../../cart/domain/entities/cart.dart';
import '../../../cart/presentation/providers/cart_provider.dart';
import '../../../player/presentation/providers/favorites_provider.dart';
import '../../domain/entities/catalog_product.dart';
import '../providers/product_detail_provider.dart';

class ProductDetailView extends ConsumerWidget {
  const ProductDetailView({
    super.key,
    required this.productId,
    this.previewImageUrl,
    this.previewTitle,
  });

  final String productId;
  final String? previewImageUrl;
  final String? previewTitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detail = ref.watch(productDetailProvider(productId: productId));
    final favorites = ref.watch(favoritesProvider);
    final isFav = favorites.value?.contains(productId) ?? false;
    final product = detail.asData?.value;

    final imageUrl = product?.pictureUrls.isNotEmpty == true
        ? product!.pictureUrls.first
        : (product?.thumbnailUrl ?? previewImageUrl);

    return Scaffold(
      backgroundColor: MeliColors.background,
      appBar: AppBar(
        backgroundColor: MeliColors.brand,
        foregroundColor: MeliColors.textDark,
        title: Text(
          previewTitle ?? 'Producto',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () =>
                ref.read(favoritesProvider.notifier).toggle(productId),
            icon: Icon(isFav ? Icons.favorite : Icons.favorite_border),
          ),
          const CartIconButton(),
        ],
      ),
      body: AppDragDismiss(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  // Heroine siempre montado: no reemplazar por spinner.
                  AspectRatio(
                    aspectRatio: 1,
                    child: ColoredBox(
                      color: MeliColors.surface,
                      child: AppHero(
                        tag: AppHeroTags.productImage(productId),
                        child: NetworkImageBox(
                          imageUrl: imageUrl,
                          fit: BoxFit.contain,
                          placeholderIcon: Icons.image,
                        ),
                      ),
                    ),
                  ),
                  detail.when(
                    data: (p) => _ProductInfo(product: p),
                    loading: () => const ProductDetailInfoSkeleton(),
                    error: (e, _) => Padding(
                      padding: const EdgeInsets.all(16),
                      child: ErrorRetry(
                        message: e.toString(),
                        onRetry: () => ref.invalidate(
                          productDetailProvider(productId: productId),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (product != null)
              _ProductActions(product: product)
            else
              const ActionFooter(
                child: Row(
                  children: [
                    Expanded(
                      child: SkeletonBox(height: 44, borderRadius: 8),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: SkeletonBox(height: 44, borderRadius: 8),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _ProductInfo extends StatelessWidget {
  const _ProductInfo({required this.product});

  final CatalogProduct product;

  @override
  Widget build(BuildContext context) {
    final offer = product.bestOffer;
    final display = GamePricing.resolve(
      productId: product.id,
      offerPrice: offer?.price,
      originalPrice: offer?.originalPrice,
    );

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          if (display.isSuperOffer)
            const AppAnimatedText(
              texts: ['¡Súper oferta!', 'Aprovechala ahora'],
              style: AppTextAnimationStyle.colorize,
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
            ),
          if (display.originalAmount != null)
            Text(
              PriceFormat.ars(display.originalAmount!),
              style: const TextStyle(
                decoration: TextDecoration.lineThrough,
                color: MeliColors.textMuted,
              ),
            ),
          Text(
            PriceFormat.ars(display.amount),
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            PriceFormat.installmentsArs(display.amount),
            style: const TextStyle(color: MeliColors.textSecondary),
          ),
          if (product.shortDescription != null) ...[
            const SizedBox(height: 16),
            Text(product.shortDescription!),
          ],
        ],
      ),
    );
  }
}

class _ProductActions extends ConsumerWidget {
  const _ProductActions({required this.product});

  final CatalogProduct product;

  CartLine _toLine() {
    final offer = product.bestOffer;
    final display = GamePricing.resolve(
      productId: product.id,
      offerPrice: offer?.price,
      originalPrice: offer?.originalPrice,
    );
    return CartLine(
      productId: product.id,
      title: product.title,
      thumbnailUrl: product.thumbnailUrl ??
          (product.pictureUrls.isNotEmpty ? product.pictureUrls.first : null),
      unitPrice: display.amount,
      originalUnitPrice: display.originalAmount,
      quantity: 1,
      isSuperOffer: display.isSuperOffer,
      categoryId: offer?.categoryId,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ActionFooter(
      padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () async {
                await ref.read(cartControllerProvider.notifier).add(_toLine());
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Agregado al carrito'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                }
              },
              child: const Text('Agregar al carrito'),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: MeliColors.action,
              ),
              onPressed: () async {
                await ref.read(cartControllerProvider.notifier).add(_toLine());
                if (context.mounted) context.push('/checkout');
              },
              child: const Text('Comprar ahora'),
            ),
          ),
        ],
      ),
    );
  }
}
