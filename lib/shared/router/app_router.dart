import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:malawi_ride_share_app/shared/router/router.dart';

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
