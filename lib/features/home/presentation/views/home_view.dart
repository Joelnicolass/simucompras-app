import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/meli_colors.dart';
import '../../../../shared/components/app_animated_text.dart';
import '../../../../shared/components/app_loader.dart';
import '../../../../shared/components/app_pull_to_refresh.dart';
import '../../../../shared/components/error_retry.dart';
import '../../../auth/presentation/providers/session_access_token_provider.dart';
import '../../../catalog/presentation/providers/catalog_browse_seed_provider.dart';
import '../../../catalog/presentation/providers/featured_products_provider.dart';
import '../components/home_categories_carousel_section.dart';
import '../components/home_featured_products_section.dart';
import '../components/home_header.dart';
import '../providers/home_feed_topics_provider.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionAccessTokenProvider);

    return Scaffold(
      backgroundColor: MeliColors.background,
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

class _HomeBody extends ConsumerWidget {
  const _HomeBody();

  Future<void> _onRefresh(WidgetRef ref) async {
    ref.read(catalogBrowseSeedProvider.notifier).reshuffle();
    final (first, second) = ref.read(homeFeedTopicsProvider);
    await Future.wait([
      ref.read(featuredProductsProvider(query: first, limit: 6).future),
      ref.read(featuredProductsProvider(query: second, limit: 6).future),
    ]);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (firstQuery, secondQuery) = ref.watch(homeFeedTopicsProvider);

    return AppPullToRefresh(
      onRefresh: () => _onRefresh(ref),
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          HomeHeader(
            onSearchTap: () => context.push('/search'),
            onCartTap: () => context.push('/cart'),
            onLogoLongPress: () => context.push('/debug/token'),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 12, 16, 4),
            child: AppAnimatedText(
              texts: [
                'Encontrá tu próxima compra',
                'Ofertas que no vas a creer',
                'Simulá. Comprá. Ganá.',
              ],
              style: AppTextAnimationStyle.colorize,
              textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: MeliColors.textDark,
                height: 1.3,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const HomeCategoriesCarouselSection(),
          const SizedBox(height: 8),
          HomeFeaturedProductsSection(
            title: firstQuery.capitalizeFirst,
            query: firstQuery,
          ),
          const SizedBox(height: 8),
          HomeFeaturedProductsSection(
            title: secondQuery.capitalizeFirst,
            query: secondQuery,
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

extension on String {
  String get capitalizeFirst {
    if (isEmpty) return this;
    return substring(0, 1).toUpperCase() + substring(1);
  }
}
