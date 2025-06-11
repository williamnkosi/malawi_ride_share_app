import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_trip_bloc/driver_trip_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/location_bloc/location_bloc.dart';
import 'package:malawi_ride_share_app/pages/home_page/bloc/home_page_bloc.dart';
import 'package:malawi_ride_share_app/pages/home_page/driver_home_page/driver_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomePageBloc(),
        ),
        BlocProvider(
          create: (context) =>
              LocationBloc()..add(const LocationEventInitial()),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => DriverTripBloc()..add(const DriverTripIntial()),
        ),
      ],
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return DriverHomePage();
        },
      ),
    );
  }
}
