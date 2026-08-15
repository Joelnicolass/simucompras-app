import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/meli_colors.dart';
import '../../../../core/theme/meli_radii.dart';
import '../../../../shared/components/action_footer.dart';
import '../../../../shared/components/app_animated_digit.dart';
import '../../../../shared/components/app_feedback.dart';
import '../../../../shared/components/app_loader.dart';
import '../../../../shared/components/error_retry.dart';
import '../../../../shared/utils/price_format.dart';
import '../../../missions/domain/entities/mission.dart';
import '../../../player/domain/errors/player_failure.dart';
import '../../../player/presentation/providers/wallet_provider.dart';
import '../components/cart_line_tile.dart';
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
      final outcome =
          await ref.read(cartControllerProvider.notifier).checkout();
      if (!mounted) return;

      await showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        backgroundColor: MeliColors.surface,
        shape: const RoundedRectangleBorder(
          borderRadius: MeliRadii.sheetTop,
        ),
        builder: (context) => _CheckoutSuccessSheet(
          totalPesos: outcome.result.totalPesos,
          claimedMissions: outcome.claimedMissions,
        ),
      );

      if (!mounted) return;

      if (outcome.claimedMissions.isNotEmpty) {
        final names =
            outcome.claimedMissions.map((m) => m.title).join(' · ');
        final reward = outcome.claimedMissions.fold<int>(
          0,
          (sum, m) => sum + m.rewardPesos,
        );
        AppFeedback.showSuccess(
          context,
          outcome.claimedMissions.length == 1
              ? '¡Objetivo cumplido! $names · +${PriceFormat.ars(reward.toDouble())}'
              : '¡${outcome.claimedMissions.length} objetivos! $names · +${PriceFormat.ars(reward.toDouble())}',
        );
      }

      context.go('/');
    } on InsufficientPesos catch (e) {
      if (!mounted) return;
      AppFeedback.showError(context, e.toString());
    } catch (e) {
      if (!mounted) return;
      AppFeedback.showError(context, e.toString());
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
          'Confirmar compra',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: cart.when(
        data: (data) {
          if (data.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.shopping_bag_outlined,
                      size: 48,
                      color: MeliColors.textMuted,
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'No hay productos para pagar.',
                      style: TextStyle(color: MeliColors.textSecondary),
                    ),
                    const SizedBox(height: 16),
                    FilledButton(
                      onPressed: () => context.pop(),
                      style: FilledButton.styleFrom(
                        backgroundColor: MeliColors.action,
                        shape: const RoundedRectangleBorder(
                          borderRadius: MeliRadii.buttonAll,
                        ),
                      ),
                      child: const Text('Volver'),
                    ),
                  ],
                ),
              ),
            );
          }
          final total = data.totalPesos.round();
          final balance = wallet.value?.balancePesos;
          final canPay = balance == null || balance >= total;

          return Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(12),
                  children: [
                    _CheckoutSummaryHeader(
                      itemCount: data.itemCount,
                      total: total,
                      balance: balance,
                      canPay: canPay,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Tu pedido',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    for (var i = 0; i < data.lines.length; i++) ...[
                      if (i > 0) const SizedBox(height: 8),
                      CartLineTile(
                        line: data.lines[i],
                        enabled: !_submitting,
                      ),
                    ],
                  ],
                ),
              ),
              ActionFooter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Total a pagar',
                          style: TextStyle(
                            fontSize: 14,
                            color: MeliColors.textSecondary,
                          ),
                        ),
                        const Spacer(),
                        AppAnimatedDigit(
                          value: total,
                          textStyle: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: MeliColors.textDark,
                          ),
                          firstScrollAnimate: true,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    FilledButton(
                      onPressed: canPay && !_submitting ? _confirm : null,
                      style: FilledButton.styleFrom(
                        backgroundColor: MeliColors.action,
                        disabledBackgroundColor:
                            MeliColors.action.withValues(alpha: 0.4),
                        foregroundColor: Colors.white,
                        minimumSize: const Size.fromHeight(48),
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: MeliRadii.buttonAll,
                        ),
                      ),
                      child: _submitting
                          ? const SizedBox(
                              width: 22,
                              height: 22,
                              child: CircularProgressIndicator(
                                strokeWidth: 2.5,
                                color: Colors.white,
                              ),
                            )
                          : Text(
                              canPay
                                  ? 'Pagar ${PriceFormat.ars(total.toDouble())}'
                                  : 'Saldo insuficiente',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                    ),
                  ],
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

class _CheckoutSummaryHeader extends StatelessWidget {
  const _CheckoutSummaryHeader({
    required this.itemCount,
    required this.total,
    required this.balance,
    required this.canPay,
  });

  final int itemCount;
  final int total;
  final int? balance;
  final bool canPay;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1B4F9C), MeliColors.action],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: MeliRadii.cardAll,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$itemCount producto${itemCount == 1 ? '' : 's'}',
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.85),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 6),
          AppAnimatedDigit(
            value: total,
            textStyle: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          if (balance != null) ...[
            const SizedBox(height: 10),
            Text(
              canPay
                  ? 'Saldo disponible: ${PriceFormat.ars(balance!.toDouble())}'
                  : 'Saldo insuficiente · ${PriceFormat.ars(balance!.toDouble())}',
              style: TextStyle(
                color: canPay
                    ? Colors.white.withValues(alpha: 0.9)
                    : const Color(0xFFFFCDD2),
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _CheckoutSuccessSheet extends StatelessWidget {
  const _CheckoutSuccessSheet({
    required this.totalPesos,
    required this.claimedMissions,
  });

  final int totalPesos;
  final List<Mission> claimedMissions;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 44,
              height: 4,
              decoration: BoxDecoration(
                color: MeliColors.divider,
                borderRadius: BorderRadius.circular(MeliRadii.xs),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: MeliColors.success.withValues(alpha: 0.15),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check_rounded,
                size: 36,
                color: MeliColors.success,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              '¡Compra realizada!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 8),
            const Text(
              'Gastaste',
              style: TextStyle(color: MeliColors.textSecondary),
            ),
            const SizedBox(height: 4),
            AppAnimatedDigit(
              value: totalPesos,
              textStyle: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w800,
                color: MeliColors.action,
              ),
            ),
            if (claimedMissions.isNotEmpty) ...[
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: MeliColors.success.withValues(alpha: 0.1),
                  borderRadius: MeliRadii.cardAll,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Objetivos cumplidos',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: MeliColors.success,
                      ),
                    ),
                    const SizedBox(height: 6),
                    for (final m in claimedMissions)
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          '• ${m.title} · +${PriceFormat.ars(m.rewardPesos.toDouble())}',
                          style: const TextStyle(fontSize: 13),
                        ),
                      ),
                  ],
                ),
              ),
            ],
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () => Navigator.of(context).pop(),
              style: FilledButton.styleFrom(
                backgroundColor: MeliColors.brand,
                foregroundColor: MeliColors.textDark,
                minimumSize: const Size.fromHeight(48),
                shape: const RoundedRectangleBorder(
                  borderRadius: MeliRadii.buttonAll,
                ),
              ),
              child: const Text(
                'Seguir comprando',
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
