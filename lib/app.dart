import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:malawi_ride_share_app/app_blocs/app_bloc/app_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/location_bloc/location_bloc.dart';
import 'package:malawi_ride_share_app/firebase_options.dart';
import 'package:malawi_ride_share_app/repository/auth_repository.dart';
import 'package:malawi_ride_share_app/repository/firebase_repository.dart';
import 'package:malawi_ride_share_app/services/locator.dart';
import 'package:malawi_ride_share_app/shared/bloc_observer/bloc_logging_config.dart';
import 'package:malawi_ride_share_app/shared/router/app_router.dart';

class App extends StatelessWidget {
  final String flavor;

  App({super.key, required this.flavor}) {
    setup();
  }

  void setup() {
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    setupGetIt();
    Future.delayed(const Duration(milliseconds: 200));

    enableAuthDebugLogging();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => LocationBloc()),
          BlocProvider(
            create: (context) =>
                AppBloc(fireBaseRepository: getIt<FirebaseRepository>()),
            lazy: false,
          ),
          BlocProvider(
            create: (context) =>
                AuthBloc(authRepository: getIt<AuthRepository>()),
            lazy: false,
          )
        ],
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return AppRouter();
          },
        ),
      ),
    );
  }
}
