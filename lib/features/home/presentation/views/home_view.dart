import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/meli_colors.dart';
import '../../../../shared/components/app_loader.dart';
import '../../../../shared/components/error_retry.dart';
import '../../../auth/presentation/providers/session_access_token_provider.dart';
import '../components/home_bottom_nav.dart';
import '../components/home_brand_banners_section.dart';
import '../components/home_categories_section.dart';
import '../components/home_footer.dart';
import '../components/home_header.dart';
import '../components/home_inspired_grid_section.dart';
import '../components/home_inspired_list_section.dart';
import '../components/home_official_stores_section.dart';
import '../components/home_payment_cta_section.dart';
import '../components/home_promo_banner.dart';
import '../components/home_recently_viewed_section.dart';
import '../components/home_subscription_banner.dart';

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

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        HomeHeader(
          onLogoLongPress: () => context.push('/debug/token'),
        ),
        const HomePromoBanner(),
        const SizedBox(height: 8),
        const HomeRecentlyViewedSection(),
        const SizedBox(height: 8),
        const HomeInspiredListSection(),
        const SizedBox(height: 8),
        const HomeInspiredGridSection(),
        const SizedBox(height: 4),
        const HomeSubscriptionBanner(),
        const HomeBrandBannersSection(),
        const SizedBox(height: 8),
        const HomeOfficialStoresSection(),
        const SizedBox(height: 8),
        const HomeCategoriesSection(),
        const SizedBox(height: 8),
        const HomePaymentCtaSection(),
        const SizedBox(height: 8),
        const HomeFooter(),
        const SizedBox(height: 16),
      ],
    );
  }
}
