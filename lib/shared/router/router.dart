import 'package:go_router/go_router.dart';
import 'package:malawi_ride_share_app/pages/login_page/login_page.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginPage(),
    ),
  ],
);
