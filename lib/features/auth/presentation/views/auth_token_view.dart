import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/config/game_config.dart';
import '../../../../core/theme/meli_colors.dart';
import '../../../../core/theme/meli_radii.dart';
import '../../../../shared/components/app_loader.dart';
import '../../../../shared/components/error_retry.dart';
import '../../../../shared/utils/price_format.dart';
import '../../../missions/presentation/providers/missions_provider.dart';
import '../../../player/presentation/providers/wallet_provider.dart';
import '../providers/session_access_token_provider.dart';

/// Pantalla de debug: token ML + cheats de juego.
class AuthTokenView extends ConsumerWidget {
  const AuthTokenView({super.key});

  static const _balanceStep = GameConfig.dailyTopUpPesos;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tokenAsync = ref.watch(sessionAccessTokenProvider);
    final wallet = ref.watch(walletProvider);
    final missions = ref.watch(missionsProvider);

    return Scaffold(
      backgroundColor: MeliColors.background,
      appBar: AppBar(
        backgroundColor: MeliColors.brand,
        foregroundColor: MeliColors.textDark,
        title: const Text('Debug'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _DebugSection(
            title: 'Juego · Saldo',
            child: wallet.when(
              data: (w) => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Disponible: ${PriceFormat.ars(w.balancePesos.toDouble())}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () => ref
                              .read(walletProvider.notifier)
                              .adjustBalance(-_balanceStep),
                          icon: const Icon(Icons.remove),
                          label: Text(
                            '-${PriceFormat.ars(_balanceStep.toDouble())}',
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: FilledButton.icon(
                          onPressed: () => ref
                              .read(walletProvider.notifier)
                              .adjustBalance(_balanceStep),
                          style: FilledButton.styleFrom(
                            backgroundColor: MeliColors.action,
                            shape: const RoundedRectangleBorder(
                              borderRadius: MeliRadii.buttonAll,
                            ),
                          ),
                          icon: const Icon(Icons.add),
                          label: Text(
                            '+${PriceFormat.ars(_balanceStep.toDouble())}',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              loading: () => const LinearProgressIndicator(),
              error: (e, _) => Text(e.toString()),
            ),
          ),
          const SizedBox(height: 12),
          _DebugSection(
            title: 'Juego · Misiones',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                missions.when(
                  data: (list) => Text(
                    list.isEmpty
                        ? 'Sin misiones activas'
                        : list.map((m) => '• ${m.title}').join('\n'),
                    style: const TextStyle(
                      fontSize: 13,
                      color: MeliColors.textSecondary,
                      height: 1.4,
                    ),
                  ),
                  loading: () => const LinearProgressIndicator(),
                  error: (e, _) => Text(e.toString()),
                ),
                const SizedBox(height: 12),
                FilledButton.icon(
                  onPressed: () async {
                    await ref
                        .read(missionsProvider.notifier)
                        .resetAndRandomize();
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Misiones reseteadas y aleatorizadas'),
                        ),
                      );
                    }
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: MeliColors.action,
                    shape: const RoundedRectangleBorder(
                      borderRadius: MeliRadii.buttonAll,
                    ),
                  ),
                  icon: const Icon(Icons.casino_outlined),
                  label: const Text('Resetear y aleatorizar misiones'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          _DebugSection(
            title: 'Token ML',
            child: tokenAsync.when(
              data: (token) => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _InfoRow(label: 'Tipo', value: token.tokenType),
                  _InfoRow(label: 'Expira en', value: '${token.expiresIn} s'),
                  _InfoRow(
                    label: 'Expira a las',
                    value: token.expiresAt.toLocal().toIso8601String(),
                  ),
                  _InfoRow(
                    label: 'Válido',
                    value: token.isValid ? 'sí' : 'no',
                  ),
                  _InfoRow(
                    label: 'Cached en server',
                    value: token.cached ? 'sí' : 'no',
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'access_token (preview)',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
                  SelectableText(
                    _maskToken(token.value),
                    style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
                  ),
                  const SizedBox(height: 12),
                  FilledButton.icon(
                    onPressed: () =>
                        ref.invalidate(sessionAccessTokenProvider),
                    style: FilledButton.styleFrom(
                      backgroundColor: MeliColors.action,
                      shape: const RoundedRectangleBorder(
                        borderRadius: MeliRadii.buttonAll,
                      ),
                    ),
                    icon: const Icon(Icons.refresh),
                    label: const Text('Forzar renovación'),
                  ),
                ],
              ),
              loading: () => const AppLoader(message: 'Obteniendo token…'),
              error: (error, _) => ErrorRetry(
                message: error.toString(),
                onRetry: () => ref.invalidate(sessionAccessTokenProvider),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _maskToken(String value) {
    if (value.length <= 16) return '••••';
    return '${value.substring(0, 12)}…${value.substring(value.length - 6)}';
  }
}

class _DebugSection extends StatelessWidget {
  const _DebugSection({required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MeliColors.surface,
      borderRadius: MeliRadii.cardAll,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            child,
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          SizedBox(
            width: 140,
            child: Text(
              label,
              style: const TextStyle(color: MeliColors.textSecondary),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
