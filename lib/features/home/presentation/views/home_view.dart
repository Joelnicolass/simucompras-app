import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/components/app_loader.dart';
import '../../../../shared/components/error_retry.dart';
import '../../../auth/presentation/providers/session_access_token_provider.dart';
import '../components/home_placeholder_section.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionAccessTokenProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('SimuCompras'),
        actions: [
          IconButton(
            tooltip: 'Debug token',
            onPressed: () => context.push('/debug/token'),
            icon: const Icon(Icons.bug_report_outlined),
          ),
        ],
      ),
      body: session.when(
        data: (_) => const _HomeBody(),
        loading: () => const AppLoader(message: 'Preparando sesión…'),
        error: (error, stackTrace) => ErrorRetry(
          message: error.toString(),
          onRetry: () => ref.invalidate(sessionAccessTokenProvider),
        ),
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        Text(
          'Simulá la compra. Calmás el impulso.',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 24),
        const HomePlaceholderSection(
          title: 'Buscar',
          subtitle: 'Próximamente: búsqueda de productos en MercadoLibre.',
          icon: Icons.search,
        ),
        const SizedBox(height: 16),
        const HomePlaceholderSection(
          title: 'Destacados',
          subtitle: 'Próximamente: catálogo simulado con tiempo de espera.',
          icon: Icons.local_offer_outlined,
        ),
        const SizedBox(height: 16),
        const HomePlaceholderSection(
          title: 'Carrito',
          subtitle: 'Próximamente: flujo de checkout sin cobro real.',
          icon: Icons.shopping_cart_outlined,
        ),
      ],
    );
  }
}
