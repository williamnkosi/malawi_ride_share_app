import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/bottom_navigation_bar.dart';
import 'package:malawi_ride_share_app/config/theme/app_theme.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/pages/login_page/login_page.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/pages/signup_user_page/signup_user_page.dart';
import 'package:malawi_ride_share_app/config/routes/router.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/pages/signup_user_page/sigup_user_creds.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/pages/signup_user_page/sign_up_container.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/bloc/cubit/sign_up_cubit.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/pages/driver_active_trip_page/driver_active_trip.dart';
import 'package:malawi_ride_share_app/services/locator.dart';

class AppRouter extends StatelessWidget {
  AppRouter({super.key});

  final List<String> privateRoutes = [
    AppRoutes.homePage,
    AppRoutes.driverActiveTripPage,
  ];

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
              authenticated: (_) {
                final location = routerState.matchedLocation;
                if (privateRoutes.contains(location)) {
                  return null; // Stay on private routes
                }
                // Authenticated users should not be on public routes
                return AppRoutes.homePage;
              },

              unauthenticated: (_) {
                final location = routerState.matchedLocation;
                // Check if current route is public or starts with a public route
                final isPublic =
                    publicRoutes.contains(location) ||
                    publicRoutes.any((route) => location.startsWith(route));
                if (isPublic) {
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
              builder: (context, state) => const SignUpContainer(),
            ),
            GoRoute(
              path: AppRoutes.driverActiveTripPage,
              builder: (context, state) {
                final trip = state.extra as DriverTripEntity;
                return DriverActiveTrip(trip: trip);
              },
            ),
          ],
        );

        return MaterialApp.router(theme: buildAppTheme(), routerConfig: router);
      },
    );
  }
}
