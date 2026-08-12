import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/meli_colors.dart';
import '../../../../shared/components/app_loader.dart';
import '../../../../shared/components/error_retry.dart';
import '../../../auth/presentation/providers/session_access_token_provider.dart';
import '../../../catalog/presentation/providers/catalog_browse_seed_provider.dart';
import '../../../catalog/presentation/providers/featured_products_provider.dart';
import '../components/home_bottom_nav.dart';
import '../components/home_brand_banners_section.dart';
import '../components/home_categories_carousel_section.dart';
import '../components/home_featured_products_section.dart';
import '../components/home_footer.dart';
import '../components/home_header.dart';
import '../components/home_official_stores_section.dart';
import '../components/home_payment_cta_section.dart';
import '../components/home_promo_banner.dart';
import '../components/home_subscription_banner.dart';
import '../home_feed_queries.dart';

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
      bottomNavigationBar: session.maybeWhen(
        data: (_) => const HomeBottomNav(),
        orElse: () => null,
      ),
    );
  }
}

class _HomeBody extends ConsumerWidget {
  const _HomeBody();

  Future<void> _onRefresh(WidgetRef ref) async {
    ref.read(catalogBrowseSeedProvider.notifier).reshuffle();
    await Future.wait([
      for (final query in HomeFeedQueries.all)
        ref.read(featuredProductsProvider(query: query, limit: 6).future),
    ]);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      color: MeliColors.action,
      backgroundColor: MeliColors.surface,
      onRefresh: () => _onRefresh(ref),
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          HomeHeader(
            onLogoLongPress: () => context.push('/debug/token'),
          ),
          const HomePromoBanner(),
          const SizedBox(height: 8),
          const HomeCategoriesCarouselSection(),
          const SizedBox(height: 8),
          const HomeFeaturedProductsSection(
            query: HomeFeedQueries.inspired,
          ),
          const SizedBox(height: 8),
          const HomeFeaturedProductsSection(
            title: 'Relacionado con tus búsquedas',
            query: HomeFeedQueries.related,
          ),
          const SizedBox(height: 4),
          const HomeSubscriptionBanner(),
          const HomeBrandBannersSection(),
          const SizedBox(height: 8),
          const HomeOfficialStoresSection(),
          const SizedBox(height: 8),
          const HomePaymentCtaSection(),
          const SizedBox(height: 8),
          const HomeFooter(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
