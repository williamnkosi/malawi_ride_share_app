import 'package:go_router/go_router.dart';
import 'package:malawi_ride_share_app/bottom_navigation_bar.dart';
import 'package:malawi_ride_share_app/pages/login_page/login_page.dart';

List<RouteBase> appRoutes = [
  GoRoute(
    path: '/',
    builder: (context, state) => const AppBottomNavigationBar(),
  ),
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginPage(),
  ),
];
