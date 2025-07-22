import 'package:go_router/go_router.dart';
import 'package:malawi_ride_share_app/bottom_navigation_bar.dart';
import 'package:malawi_ride_share_app/pages/login_page/login_page.dart';
import 'package:malawi_ride_share_app/pages/signup_user_page/signup_user_page.dart';

List<RouteBase> appRoutes = [
  GoRoute(
    path: AppRoutes.loginPage,
    builder: (context, state) => LoginPage(),
  ),
  GoRoute(
    path: AppRoutes.authSignUpPage,
    builder: (context, state) => SignupUserPage(),
  ),
  GoRoute(
    path: AppRoutes.homePage,
    builder: (context, state) => const AppBottomNavigationBar(),
  ),
];

class AppRoutes {
  static const String loginPage = '/LoginPage';
  static const String authSignUpPage = '/AuthSignUpPage';
  static const String homePage = '/homePage';
}
