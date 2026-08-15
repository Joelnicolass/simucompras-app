import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/meli_colors.dart';
import '../../../../core/theme/meli_radii.dart';
import '../../../../shared/components/action_footer.dart';
import '../../../../shared/components/app_loader.dart';
import '../../../../shared/components/error_retry.dart';
import '../../../../shared/utils/price_format.dart';
import '../../domain/entities/cart.dart';
import '../components/cart_line_tile.dart';
import '../providers/cart_provider.dart';

class CartView extends ConsumerWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartControllerProvider);

    return Scaffold(
      backgroundColor: MeliColors.background,
      appBar: AppBar(
        backgroundColor: MeliColors.brand,
        foregroundColor: MeliColors.textDark,
        title: const Text(
          'Carrito',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: cart.when(
        data: (data) {
          if (data.isEmpty) {
            return const Center(
              child: Text(
                'Tu carrito está vacío',
                style: TextStyle(color: MeliColors.textSecondary),
              ),
            );
          }
          return Column(
            children: [
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.all(12),
                  itemCount: data.lines.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    return CartLineTile(line: data.lines[index]);
                  },
                ),
              ),
              _CartFooter(cart: data),
            ],
          );
        },
        loading: () => const AppLoader(),
        error: (e, _) => ErrorRetry(
          message: e.toString(),
          onRetry: () => ref.invalidate(cartControllerProvider),
        ),
      ),
    );
  }
}

class _CartFooter extends StatelessWidget {
  const _CartFooter({required this.cart});

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return ActionFooter(
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 12,
                    color: MeliColors.textSecondary,
                  ),
                ),
                Text(
                  PriceFormat.ars(cart.totalPesos),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          FilledButton(
            onPressed: () => context.push('/checkout'),
            style: FilledButton.styleFrom(
              backgroundColor: MeliColors.action,
              shape: const RoundedRectangleBorder(
                borderRadius: MeliRadii.buttonAll,
              ),
            ),
            child: const Text('Continuar'),
          ),
        ],
      ),
    );
  }
}
