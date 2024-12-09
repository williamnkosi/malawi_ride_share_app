import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:malawi_ride_share_app/app_blocs/app_bloc/app_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/location_bloc/location_bloc.dart';
import 'package:malawi_ride_share_app/bottom_navigation_bar.dart';
import 'package:malawi_ride_share_app/pages/login_page/login_page.dart';
import 'package:malawi_ride_share_app/shared/router/app_router.dart';

class App extends StatelessWidget {
  final String flavor;
  const App({super.key, required this.flavor});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LocationBloc()),
        BlocProvider(create: (context) => AppBloc()),
        BlocProvider(
          create: (context) => AuthBloc()..add(const AuthBlocStartUp()),
          lazy: false,
        )
      ],
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return AppRouter(
            userCredential: state.user,
          );
        },
      ),
    );
  }
}
