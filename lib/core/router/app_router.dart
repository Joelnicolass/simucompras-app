import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/auth_token_view.dart';
import '../../features/catalog/presentation/views/category_view.dart';
import '../../features/catalog/presentation/views/search_view.dart';
import '../../features/home/presentation/views/home_view.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => SearchView(
        initialQuery: state.uri.queryParameters['q'] ?? '',
      ),
    ),
    GoRoute(
      path: '/category/:id',
      builder: (context, state) {
        final id = state.pathParameters['id'] ?? '';
        final name = state.uri.queryParameters['name'] ?? id;
        return CategoryView(categoryId: id, categoryName: name);
      },
    ),
    GoRoute(
      path: '/debug/token',
      builder: (context, state) => const AuthTokenView(),
    ),
  ],
);
