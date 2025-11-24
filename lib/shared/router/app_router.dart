import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:malawi_ride_share_app/app_blocs/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/bottom_navigation_bar.dart';
import 'package:malawi_ride_share_app/core/theme/app_theme.dart';
import 'package:malawi_ride_share_app/pages/auth_signup_page/auth_signup_page.dart';
import 'package:malawi_ride_share_app/pages/login_page/login_page.dart';
import 'package:malawi_ride_share_app/pages/signup_user_page/signup_user_page.dart';
import 'package:malawi_ride_share_app/shared/router/router.dart';

class AppRouter extends StatelessWidget {
  AppRouter({
    super.key,
  });

  final List<String> publicRoutes = [
    AppRoutes.loginPage,
    AppRoutes.authSignUpPage,
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        // Define the router dynamically based on the current state
        final GoRouter router = GoRouter(
          initialLocation: AppRoutes.loginPage,
          redirect: (context, routerState) {
            return state.map(
              start: (_) =>
                  AppRoutes.loginPage, // Redirect logic for the initial state
              loading: (_) => null, // Do nothing, remain on the same screen
              authenticated: (_) =>
                  AppRoutes.homePage, // Navigate to the home page
              unauthenticated: (_) {
                if (publicRoutes.contains(routerState.matchedLocation)) {
                  return null;
                }
                return AppRoutes.loginPage;
              },
              error: (_) {
                return null;
              }, // Navigate to the login page
            );
          },
          routes: [
            GoRoute(
              path: AppRoutes.homePage,
              builder: (context, state) =>
                  const AppBottomNavigationBar(), // Shown during the initial state
            ),
            GoRoute(
              path: AppRoutes.loginPage,
              builder: (context, state) =>
                  LoginPage(), // Authenticated experience
            ),
            GoRoute(
              path: AppRoutes.authSignUpPage,
              builder: (context, state) =>
                  SignupUserPage(), // Unauthenticated experience
            ),
          ],
        );

        return MaterialApp.router(
          theme: buildAppTheme(),
          routerConfig: router,
        );
      },
    );
  }
}
