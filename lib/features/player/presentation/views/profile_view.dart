import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:u_credit_card/u_credit_card.dart';

import '../../../../core/config/game_config.dart';
import '../../../../core/theme/meli_colors.dart';
import '../../../../core/theme/meli_radii.dart';
import '../../../../shared/components/app_loader.dart';
import '../../../../shared/components/error_retry.dart';
import '../../../../shared/components/search_history_pill.dart';
import '../../../../shared/utils/price_format.dart';
import '../../../missions/presentation/components/mission_card.dart';
import '../../../missions/presentation/components/weekly_challenge_card.dart';
import '../../../missions/presentation/providers/missions_provider.dart';
import '../../../missions/presentation/providers/weekly_challenge_provider.dart';
import '../providers/player_progress_provider.dart';
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
            const _LevelSection(),
            const SizedBox(height: 8),
            Text(
              'Recarga diaria: +${PriceFormat.ars(GameConfig.dailyTopUpPesos.toDouble())} (+${PriceFormat.ars(GameConfig.dailyTopUpPerLevel.toDouble())}/nivel)',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                color: MeliColors.textSecondary,
              ),
            ),
            const SizedBox(height: 20),
            const _WeeklySection(),
            const SizedBox(height: 20),
            const _MissionsSection(),
            const SizedBox(height: 20),
            const _RecentSearchesSection(),
            const SizedBox(height: 20),
            const _PurchasesCta(),
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
    return Column(
      children: [
        Center(
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
            showBalance: false,
            autoHideBalance: false,
            enableFlipping: true,
            cvvNumber: '123',
            shouldMaskCardNumber: true,
          ),
        ),
        const SizedBox(height: 14),
        Text(
          PriceFormat.ars(balance.toDouble()),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.5,
          ),
        ),
        const SizedBox(height: 2),
        const Text(
          'Disponible',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: MeliColors.textSecondary,
          ),
        ),
      ],
    );
  }
}

class _LevelSection extends ConsumerWidget {
  const _LevelSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progress = ref.watch(playerLevelProvider);

    return progress.when(
      data: (p) {
        final level = GameConfig.levelForXp(p.xp);
        final into = GameConfig.xpIntoCurrentLevel(p.xp);
        final ratio = into / GameConfig.xpPerLevel;
        return Container(
          padding: const EdgeInsets.all(14),
          decoration: const BoxDecoration(
            color: MeliColors.surface,
            borderRadius: MeliRadii.cardAll,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Nivel $level',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '$into / ${GameConfig.xpPerLevel} XP',
                    style: const TextStyle(
                      fontSize: 12,
                      color: MeliColors.textSecondary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: LinearProgressIndicator(
                  value: ratio,
                  minHeight: 8,
                  backgroundColor: MeliColors.divider,
                  color: MeliColors.action,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Subís de nivel y sumás +${PriceFormat.ars(GameConfig.levelUpBonusPesos.toDouble())}',
                style: const TextStyle(
                  fontSize: 12,
                  color: MeliColors.textSecondary,
                ),
              ),
            ],
          ),
        );
      },
      loading: () => const LinearProgressIndicator(),
      error: (e, _) => Text(e.toString()),
    );
  }
}

class _WeeklySection extends ConsumerWidget {
  const _WeeklySection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weekly = ref.watch(weeklyChallengeControllerProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Desafío de la semana',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 4),
        const Text(
          'Meta más grande, premio más alto',
          style: TextStyle(fontSize: 13, color: MeliColors.textSecondary),
        ),
        const SizedBox(height: 12),
        weekly.when(
          data: (c) => WeeklyChallengeCard(challenge: c),
          loading: () => const LinearProgressIndicator(),
          error: (e, _) => Text(e.toString()),
        ),
      ],
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

class _PurchasesCta extends StatelessWidget {
  const _PurchasesCta();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MeliColors.surface,
      borderRadius: MeliRadii.cardAll,
      child: InkWell(
        borderRadius: MeliRadii.cardAll,
        onTap: () => context.go('/purchases'),
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(Icons.shopping_bag_outlined, color: MeliColors.action),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mis compras',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Revendé lo que compraste y recuperá saldo',
                      style: TextStyle(
                        fontSize: 13,
                        color: MeliColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.chevron_right, color: MeliColors.navInactive),
            ],
          ),
        ),
      ),
    );
  }
}
