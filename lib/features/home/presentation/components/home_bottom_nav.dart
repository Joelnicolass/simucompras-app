import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/meli_colors.dart';
import '../../../cart/presentation/providers/cart_provider.dart';

/// Bottom nav del shell: 4 tabs + FAB central del carrito.
///
/// Branches: 0 Inicio · 1 Favoritos · 2 Mis compras · 3 Mi cuenta.
/// El FAB no es branch: navega a `/cart`.
class HomeBottomNav extends ConsumerWidget {
  const HomeBottomNav({
    super.key,
    this.currentIndex = 0,
    this.onTap,
  });

  /// Índice del [StatefulNavigationShell] (0..3).
  final int currentIndex;
  final ValueChanged<int>? onTap;

  static const _left = [
    (Icons.home_outlined, Icons.home, 'Inicio'),
    (Icons.favorite_border, Icons.favorite, 'Favoritos'),
  ];

  static const _right = [
    (Icons.shopping_bag_outlined, Icons.shopping_bag, 'Mis compras'),
    (Icons.person_outline, Icons.person, 'Mi cuenta'),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartCount = ref.watch(cartControllerProvider).value?.itemCount ?? 0;

    return Material(
      elevation: 8,
      color: MeliColors.surface,
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: 64,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Row(
                children: [
                  for (var i = 0; i < _left.length; i++)
                    Expanded(
                      child: _NavItem(
                        outline: _left[i].$1,
                        filled: _left[i].$2,
                        label: _left[i].$3,
                        selected: currentIndex == i,
                        onTap: () => onTap?.call(i),
                      ),
                    ),
                  const SizedBox(width: 64),
                  for (var i = 0; i < _right.length; i++)
                    Expanded(
                      child: _NavItem(
                        outline: _right[i].$1,
                        filled: _right[i].$2,
                        label: _right[i].$3,
                        selected: currentIndex == i + 2,
                        onTap: () => onTap?.call(i + 2),
                      ),
                    ),
                ],
              ),
              Positioned(
                top: -18,
                left: 0,
                right: 0,
                child: Center(
                  child: _CartFab(
                    count: cartCount,
                    onPressed: () => context.push('/cart'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.outline,
    required this.filled,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final IconData outline;
  final IconData filled;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = selected ? MeliColors.action : MeliColors.navInactive;
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(selected ? filled : outline, color: color, size: 24),
          const SizedBox(height: 4),
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 11, color: color),
          ),
        ],
      ),
    );
  }
}

class _CartFab extends StatelessWidget {
  const _CartFab({required this.count, required this.onPressed});

  final int count;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      shadowColor: MeliColors.action.withValues(alpha: 0.35),
      shape: const CircleBorder(),
      color: MeliColors.action,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onPressed,
        child: SizedBox(
          width: 56,
          height: 56,
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Icon(
                Icons.shopping_cart_rounded,
                color: Colors.white,
                size: 26,
              ),
              if (count > 0)
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 1,
                    ),
                    decoration: BoxDecoration(
                      color: MeliColors.brand,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    constraints: const BoxConstraints(minWidth: 16),
                    child: Text(
                      count > 99 ? '99+' : '$count',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w800,
                        color: MeliColors.textDark,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
