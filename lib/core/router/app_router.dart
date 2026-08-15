import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heroine/heroine.dart';

import '../../features/auth/presentation/views/auth_token_view.dart';
import '../../features/cart/presentation/views/cart_view.dart';
import '../../features/cart/presentation/views/checkout_view.dart';
import '../../features/catalog/presentation/navigation/product_route_args.dart';
import '../../features/catalog/presentation/views/category_view.dart';
import '../../features/catalog/presentation/views/product_detail_view.dart';
import '../../features/catalog/presentation/views/search_view.dart';
import '../../features/home/presentation/components/home_bottom_nav.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/home/presentation/views/notifications_stub_view.dart';
import '../../features/player/presentation/views/favorites_view.dart';
import '../../features/player/presentation/views/profile_view.dart';
import '../../shared/components/app_page_transitions.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorHomeKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _shellNavigatorFavKey = GlobalKey<NavigatorState>(debugLabel: 'fav');
final _shellNavigatorNotifKey = GlobalKey<NavigatorState>(debugLabel: 'notif');
final _shellNavigatorProfileKey =
    GlobalKey<NavigatorState>(debugLabel: 'profile');

/// Un controller por navigator (shell + root) para heroine.
final _rootHeroine = HeroineController();
final _homeHeroine = HeroineController();
final _favHeroine = HeroineController();
final _notifHeroine = HeroineController();
final _profileHeroine = HeroineController();

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  observers: [_rootHeroine],
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return Scaffold(
          body: navigationShell,
          bottomNavigationBar: HomeBottomNav(
            currentIndex: navigationShell.currentIndex,
            onTap: (index) => navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            ),
          ),
        );
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorHomeKey,
          observers: [_homeHeroine],
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const HomeView(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorFavKey,
          observers: [_favHeroine],
          routes: [
            GoRoute(
              path: '/favorites',
              builder: (context, state) => const FavoritesView(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorNotifKey,
          observers: [_notifHeroine],
          routes: [
            GoRoute(
              path: '/notifications',
              builder: (context, state) => const NotificationsStubView(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorProfileKey,
          observers: [_profileHeroine],
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) => const ProfileView(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/search',
      builder: (context, state) => SearchView(
        initialQuery: state.uri.queryParameters['q'] ?? '',
      ),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/category/:id',
      builder: (context, state) {
        final id = state.pathParameters['id'] ?? '';
        final name = state.uri.queryParameters['name'] ?? id;
        return CategoryView(categoryId: id, categoryName: name);
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/product/:id',
      pageBuilder: (context, state) {
        final id = state.pathParameters['id'] ?? '';
        final args = ProductRouteArgs.fromExtra(state.extra);
        return AppPageTransitions.softFadeSlide(
          key: state.pageKey,
          child: ProductDetailView(
            productId: id,
            previewImageUrl: args?.imageUrl,
            previewTitle: args?.title,
            previewRootCategoryId: args?.rootCategoryId,
          ),
        );
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/cart',
      pageBuilder: (context, state) => AppPageTransitions.softFadeSlide(
        key: state.pageKey,
        child: const CartView(),
      ),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/checkout',
      pageBuilder: (context, state) => AppPageTransitions.softFadeSlide(
        key: state.pageKey,
        child: const CheckoutView(),
      ),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/debug/token',
      builder: (context, state) => const AuthTokenView(),
    ),
  ],
);
