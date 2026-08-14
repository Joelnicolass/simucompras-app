import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/meli_colors.dart';
import '../../../../shared/components/action_footer.dart';
import '../../../../shared/components/app_loader.dart';
import '../../../../shared/components/error_retry.dart';
import '../../../../shared/utils/price_format.dart';
import '../../../player/domain/errors/player_failure.dart';
import '../../../player/presentation/providers/wallet_provider.dart';
import '../providers/cart_provider.dart';

class CheckoutView extends ConsumerStatefulWidget {
  const CheckoutView({super.key});

  @override
  ConsumerState<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends ConsumerState<CheckoutView> {
  bool _submitting = false;

  Future<void> _confirm() async {
    if (_submitting) return;
    setState(() => _submitting = true);
    try {
      final result =
          await ref.read(cartControllerProvider.notifier).checkout();
      if (!mounted) return;
      await showDialog<void>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('¡Compra realizada!'),
          content: Text(
            'Orden ${result.orderId}\nGastaste ${PriceFormat.ars(result.totalPesos.toDouble())}.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
      if (!mounted) return;
      context.go('/');
    } on InsufficientPesos catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final cart = ref.watch(cartControllerProvider);
    final wallet = ref.watch(walletProvider);

    return Scaffold(
      backgroundColor: MeliColors.background,
      appBar: AppBar(
        backgroundColor: MeliColors.brand,
        foregroundColor: MeliColors.textDark,
        title: const Text(
          'Checkout',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: cart.when(
        data: (data) {
          if (data.isEmpty) {
            return const Center(child: Text('No hay productos para pagar.'));
          }
          final total = data.totalPesos.round();
          final balance = wallet.value?.balancePesos;
          final canPay = balance == null || balance >= total;

          return Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    Text(
                      '${data.itemCount} producto(s)',
                      style: const TextStyle(fontSize: 15),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Total: ${PriceFormat.ars(total.toDouble())}',
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    if (balance != null) ...[
                      const SizedBox(height: 8),
                      Text(
                        'Tu saldo: ${PriceFormat.ars(balance.toDouble())}',
                        style: TextStyle(
                          color: canPay
                              ? MeliColors.textSecondary
                              : const Color(0xFFE74C3C),
                        ),
                      ),
                    ],
                    const SizedBox(height: 16),
                    for (final line in data.lines)
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          line.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text('x${line.quantity}'),
                        trailing: Text(
                          PriceFormat.ars(line.lineTotal),
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                  ],
                ),
              ),
              ActionFooter(
                child: FilledButton(
                  onPressed: canPay && !_submitting ? _confirm : null,
                  style: FilledButton.styleFrom(
                    backgroundColor: MeliColors.action,
                    minimumSize: const Size.fromHeight(48),
                  ),
                  child: _submitting
                      ? const SizedBox(
                          width: 22,
                          height: 22,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Text('Confirmar compra'),
                ),
              ),
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
