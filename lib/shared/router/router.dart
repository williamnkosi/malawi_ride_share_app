import 'package:go_router/go_router.dart';
import 'package:malawi_ride_share_app/bottom_navigation_bar.dart';
import 'package:malawi_ride_share_app/pages/login_page/login_page.dart';
import 'package:malawi_ride_share_app/pages/signup_user_page/signup_user_page.dart';

List<RouteBase> appRoutes = [
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => const AppBottomNavigationBar(),
  ),
  GoRoute(
    path: '/signUp',
    builder: (context, state) => const SignupUserPage(),
  ),
];
