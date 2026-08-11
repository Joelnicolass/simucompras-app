import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/components/app_loader.dart';
import '../../../../shared/components/error_retry.dart';
import '../providers/access_token_provider.dart';

class AuthTokenView extends ConsumerWidget {
  const AuthTokenView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tokenAsync = ref.watch(accessTokenProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('SimuCompras · Token ML')),
      body: tokenAsync.when(
        data: (token) => Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Token obtenido',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              _InfoRow(label: 'Tipo', value: token.tokenType),
              _InfoRow(
                label: 'Expira en',
                value: '${token.expiresIn} s',
              ),
              _InfoRow(
                label: 'Expira a las',
                value: token.expiresAt.toLocal().toIso8601String(),
              ),
              _InfoRow(
                label: 'Cached en server',
                value: token.cached ? 'sí' : 'no',
              ),
              const SizedBox(height: 16),
              Text(
                'access_token (preview)',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 8),
              SelectableText(
                _maskToken(token.value),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontFamily: 'monospace',
                    ),
              ),
              const Spacer(),
              FilledButton.icon(
                onPressed: () => ref.invalidate(accessTokenProvider),
                icon: const Icon(Icons.refresh),
                label: const Text('Renovar token'),
              ),
            ],
          ),
        ),
        loading: () => const AppLoader(message: 'Obteniendo token…'),
        error: (error, stackTrace) => ErrorRetry(
          message: error.toString(),
          onRetry: () => ref.invalidate(accessTokenProvider),
        ),
      ),
    );
  }

  /// No muestra el secreto completo en UI de debug.
  String _maskToken(String value) {
    if (value.length <= 16) return '••••';
    return '${value.substring(0, 12)}…${value.substring(value.length - 6)}';
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
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
