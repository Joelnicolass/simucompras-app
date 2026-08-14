import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/cart/presentation/providers/cart_provider.dart';
import '../../core/theme/meli_colors.dart';

/// Ícono de carrito con badge de cantidad — uso transversal (home, PDP, etc.).
class CartIconButton extends ConsumerWidget {
  const CartIconButton({
    super.key,
    this.onPressed,
    this.color = MeliColors.textDark,
  });

  /// Si es null, navega a `/cart`.
  final VoidCallback? onPressed;
  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(cartControllerProvider).value?.itemCount ?? 0;

    return IconButton(
      onPressed: onPressed ?? () => context.push('/cart'),
      color: color,
      icon: Badge(
        isLabelVisible: count > 0,
        label: Text('$count'),
        child: const Icon(Icons.shopping_cart_outlined),
      ),
    );
  }
}
