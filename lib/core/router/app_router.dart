import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/auth_token_view.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const AuthTokenView(),
    ),
  ],
);
