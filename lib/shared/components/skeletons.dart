import 'package:flutter/material.dart';

import 'category_avatar_chip.dart';
import 'product_card.dart';

/// Pulso de opacidad para skeletons (sin dependencias externas).
class SkeletonPulse extends StatefulWidget {
  const SkeletonPulse({super.key, required this.child});

  final Widget child;

  @override
  State<SkeletonPulse> createState() => _SkeletonPulseState();
}

class _SkeletonPulseState extends State<SkeletonPulse>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 900),
  )..repeat(reverse: true);

  late final Animation<double> _opacity = Tween<double>(
    begin: 0.45,
    end: 1,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(opacity: _opacity, child: widget.child);
  }
}

/// Bloque gris redondeado, unidad básica de los skeletons.
class SkeletonBox extends StatelessWidget {
  const SkeletonBox({
    super.key,
    this.width,
    this.height,
    this.borderRadius = 4,
    this.shape = BoxShape.rectangle,
  });

  final double? width;
  final double? height;
  final double borderRadius;
  final BoxShape shape;

  static const Color _tone = Color(0xFFE3E3E3);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: _tone,
        shape: shape,
        borderRadius: shape == BoxShape.circle
            ? null
            : BorderRadius.circular(borderRadius),
      ),
    );
  }
}

/// Grilla de placeholders de producto: cajas lisas, algo más bajas que la
/// card real para una carga liviana y minimalista.
class ProductGridSkeleton extends StatelessWidget {
  const ProductGridSkeleton({
    super.key,
    this.itemCount = 6,
    this.shrinkWrap = false,
    this.padding = EdgeInsets.zero,
  });

  final int itemCount;
  final bool shrinkWrap;
  final EdgeInsetsGeometry padding;

  /// Proporción alto/ancho de cada placeholder (card real ≈ 1.7).
  static const double _aspect = 1.35;

  @override
  Widget build(BuildContext context) {
    return SkeletonPulse(
      child: Padding(
        padding: padding,
        child: LayoutBuilder(
          builder: (context, constraints) {
            const crossAxisCount = 2;
            const spacing = 8.0;
            final itemWidth =
                (constraints.maxWidth - spacing * (crossAxisCount - 1)) /
                crossAxisCount;
            return GridView.builder(
              shrinkWrap: shrinkWrap,
              physics: shrinkWrap
                  ? const NeverScrollableScrollPhysics()
                  : null,
              itemCount: itemCount,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: spacing,
                crossAxisSpacing: spacing,
                mainAxisExtent: itemWidth * _aspect,
              ),
              itemBuilder: (_, _) => const SkeletonBox(
                borderRadius: ProductCardLayout.cardRadius,
              ),
            );
          },
        ),
      ),
    );
  }
}

/// Skeleton del carrusel de categorías: solo los círculos, misma altura que
/// el carrusel real para no producir saltos.
class CategoryCarouselSkeleton extends StatelessWidget {
  const CategoryCarouselSkeleton({super.key, this.itemCount = 6});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    const size = CategoryAvatarChipLayout.defaultAvatarSize;

    return SkeletonPulse(
      child: SizedBox(
        height: CategoryAvatarChipLayout.carouselHeight(),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          itemCount: itemCount,
          separatorBuilder: (_, _) => const SizedBox(width: 4),
          itemBuilder: (_, _) => SizedBox(
            width: CategoryAvatarChipLayout.chipWidth(size),
            child: const Align(
              alignment: Alignment.topCenter,
              child: SkeletonBox(
                width: size,
                height: size,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Skeleton del detalle de producto (debajo de la imagen heroine).
class ProductDetailInfoSkeleton extends StatelessWidget {
  const ProductDetailInfoSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const SkeletonPulse(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SkeletonBox(height: 20, borderRadius: 4),
            SizedBox(height: 8),
            SkeletonBox(width: 220, height: 20, borderRadius: 4),
            SizedBox(height: 16),
            SkeletonBox(width: 100, height: 14, borderRadius: 4),
            SizedBox(height: 8),
            SkeletonBox(width: 140, height: 28, borderRadius: 4),
            SizedBox(height: 8),
            SkeletonBox(width: 160, height: 14, borderRadius: 4),
            SizedBox(height: 24),
            SkeletonBox(height: 12, borderRadius: 4),
            SizedBox(height: 8),
            SkeletonBox(height: 12, borderRadius: 4),
            SizedBox(height: 8),
            SkeletonBox(width: 180, height: 12, borderRadius: 4),
          ],
        ),
      ),
    );
  }
}
