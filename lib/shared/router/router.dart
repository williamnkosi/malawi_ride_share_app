import 'package:go_router/go_router.dart';
import 'package:malawi_ride_share_app/bottom_navigation_bar.dart';
import 'package:malawi_ride_share_app/pages/auth_signup_page/auth_signup_page.dart';
import 'package:malawi_ride_share_app/pages/login_page/login_page.dart';

List<RouteBase> appRoutes = [
  GoRoute(
    path: Routes.loginPage.route,
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    path: Routes.authSignUp.route,
    builder: (context, state) => const AuthSignupPage(),
  ),
  GoRoute(
    path: Routes.home.route,
    builder: (context, state) => const AppBottomNavigationBar(),
  ),
];

enum Routes {
  loginPage('/LoginPage'),
  authSignUp('/AuthSignUpPage'),
  home('/Home'),
  ;

  final String route;
  const Routes(this.route);
}
