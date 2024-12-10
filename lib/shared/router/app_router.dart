import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:malawi_ride_share_app/shared/router/router.dart';

class AppRouter extends StatelessWidget {
  final UserCredential? userCredential;
  AppRouter({
    super.key,
    this.userCredential,
  });

  final List<String> publicRoutes = [
    AppRoutes.loginPage,
    AppRoutes.authSignUpPage,
  ];

  @override
  Widget build(BuildContext context) {
    final appRouter = GoRouter(
      initialLocation: AppRoutes.loginPage,
      redirect: (context, state) {
        // Redirect based on authentication state
        if (userCredential == null &&
            !publicRoutes.contains(state.matchedLocation)) {
          return '/login';
        } else if (userCredential != null &&
            state.matchedLocation == '/login') {
          return '/home';
        }
        return null;
      },
      routes: appRoutes,
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
