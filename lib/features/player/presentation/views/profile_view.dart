import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:u_credit_card/u_credit_card.dart';

import '../../../../core/config/game_config.dart';
import '../../../../core/theme/meli_colors.dart';
import '../../../../shared/components/app_loader.dart';
import '../../../../shared/components/error_retry.dart';
import '../../../../shared/components/search_history_pill.dart';
import '../../../../shared/utils/price_format.dart';
import '../../../missions/presentation/components/mission_card.dart';
import '../../../missions/presentation/providers/missions_provider.dart';
import '../providers/purchase_history_provider.dart';
import '../providers/search_history_provider.dart';
import '../providers/wallet_provider.dart';

class ProfileView extends ConsumerWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wallet = ref.watch(walletProvider);

    return Scaffold(
      backgroundColor: MeliColors.background,
      appBar: AppBar(
        backgroundColor: MeliColors.brand,
        foregroundColor: MeliColors.textDark,
        title: const Text(
          'Mi cuenta',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        automaticallyImplyLeading: false,
      ),
      body: wallet.when(
        data: (w) => ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _WalletCreditCard(balance: w.balancePesos),
            const SizedBox(height: 8),
            Text(
              'Recarga diaria: +${PriceFormat.ars(GameConfig.dailyTopUpPesos.toDouble())}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                color: MeliColors.textSecondary,
              ),
            ),
            const SizedBox(height: 20),
            const _MissionsSection(),
            const SizedBox(height: 20),
            const _RecentSearchesSection(),
            const SizedBox(height: 20),
            const _PurchaseHistorySection(),
          ],
        ),
        loading: () => const AppLoader(message: 'Cargando cuenta…'),
        error: (e, _) => ErrorRetry(
          message: e.toString(),
          onRetry: () => ref.invalidate(walletProvider),
        ),
      ),
    );
  }
}

class _WalletCreditCard extends StatelessWidget {
  const _WalletCreditCard({required this.balance});

  final int balance;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CreditCardUi(
        width: MediaQuery.sizeOf(context).width - 32,
        cardHolderFullName: 'Simu Comprador',
        cardNumber: '5412750000003483',
        validFrom: '01/26',
        validThru: '12/30',
        topLeftColor: MeliColors.action,
        bottomRightColor: const Color(0xFF1B4F9C),
        cardType: CardType.debit,
        creditCardType: CreditCardType.mastercard,
        doesSupportNfc: true,
        showBalance: true,
        balance: balance.toDouble(),
        currencySymbol: r'$',
        autoHideBalance: false,
        enableFlipping: true,
        cvvNumber: '123',
        shouldMaskCardNumber: true,
      ),
    );
  }
}

class _MissionsSection extends ConsumerWidget {
  const _MissionsSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final missions = ref.watch(missionsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Objetivos',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 4),
        const Text(
          'Completalos comprando y sumá saldo',
          style: TextStyle(fontSize: 13, color: MeliColors.textSecondary),
        ),
        const SizedBox(height: 12),
        missions.when(
          data: (list) {
            if (list.isEmpty) {
              return const Text(
                'No hay objetivos activos.',
                style: TextStyle(color: MeliColors.textSecondary),
              );
            }
            return Column(
              children: [for (final m in list) MissionCard(mission: m)],
            );
          },
          loading: () => const LinearProgressIndicator(),
          error: (e, _) => Text(e.toString()),
        ),
      ],
    );
  }
}

class _RecentSearchesSection extends ConsumerWidget {
  const _RecentSearchesSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(searchHistoryProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Búsquedas recientes',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 12),
        history.when(
          data: (entries) {
            if (entries.isEmpty) {
              return const Text(
                'Todavía no buscaste nada.',
                style: TextStyle(color: MeliColors.textSecondary),
              );
            }
            return Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final e in entries.take(12))
                  SearchHistoryPill(
                    label: e.query,
                    onTap: () => context.push(
                      '/search?q=${Uri.encodeQueryComponent(e.query)}',
                    ),
                    onRemove: () => ref
                        .read(searchHistoryProvider.notifier)
                        .remove(e.query),
                  ),
              ],
            );
          },
          loading: () => const LinearProgressIndicator(),
          error: (e, _) => Text(e.toString()),
        ),
      ],
    );
  }
}

class _PurchaseHistorySection extends ConsumerWidget {
  const _PurchaseHistorySection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(purchaseHistoryProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Compras',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 8),
        history.when(
          data: (records) {
            if (records.isEmpty) {
              return const Text(
                'Aún no hiciste compras.',
                style: TextStyle(color: MeliColors.textSecondary),
              );
            }
            return Column(
              children: [
                for (final r in records.take(10))
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: MeliColors.surface,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                r.lines.map((l) => l.title).join(', '),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '${r.purchasedAt.day}/${r.purchasedAt.month}/${r.purchasedAt.year}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: MeliColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          PriceFormat.ars(r.totalPesos.toDouble()),
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
              ],
            );
          },
          loading: () => const LinearProgressIndicator(),
          error: (e, _) => Text(e.toString()),
        ),
      ],
    );
  }
}
