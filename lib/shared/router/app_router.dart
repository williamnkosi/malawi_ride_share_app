import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:malawi_ride_share_app/bottom_navigation_bar.dart';
import 'package:malawi_ride_share_app/pages/login_page/login_page.dart';

class AppRouter extends StatelessWidget {
  final UserCredential? userCredential;
  const AppRouter({
    super.key,
    this.userCredential,
  });

  @override
  Widget build(BuildContext context) {
    final appRouter = GoRouter(
      initialLocation: '/',
      redirect: (context, state) {
        // Redirect based on authentication state
        if (userCredential == null && state.matchedLocation != '/login') {
          return '/login';
        } else if (userCredential != null &&
            state.matchedLocation == '/login') {
          return '/';
        }
        return null;
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const AppBottomNavigationBar(),
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginPage(),
        ),
      ],
    );

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: appRouter,
    );
  }
}
