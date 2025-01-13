import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:malawi_ride_share_app/app_blocs/app_bloc/app_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/location_bloc/location_bloc.dart';
import 'package:malawi_ride_share_app/shared/router/app_router.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_bottom_sheet.dart';

class App extends StatelessWidget {
  final String flavor;
  const App({super.key, required this.flavor});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LocationBloc()),
        BlocProvider(
          create: (context) => AppBloc()..add(AppEvent.appEventInitial()),
          lazy: false,
        ),
        BlocProvider(
          create: (context) =>
              AuthBloc()..add(const AuthEvent.authEventInitial()),
          lazy: false,
        )
      ],
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return AppRouter();
        },
      ),
    );
  }
}
