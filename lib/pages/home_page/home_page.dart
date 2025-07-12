import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_trip_bloc/driver_trip_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_trip_bloc/driver_trip_repository.dart';
import 'package:malawi_ride_share_app/app_blocs/location_bloc/location_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/rider_trip_bloc/rider_trip_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/rider_trip_bloc/rider_trip_repository.dart';
import 'package:malawi_ride_share_app/pages/home_page/bloc/home_page_bloc.dart';
import 'package:malawi_ride_share_app/pages/home_page/driver_home_page/driver_home_page.dart';
import 'package:malawi_ride_share_app/pages/home_page/rider_home_page/rider_home_page.dart';
import 'package:malawi_ride_share_app/services/locator.dart';

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
          create: (context) => DriverTripBloc(
              driverTripRepository: getIt<DriverTripRepository>())
            ..add(const DriverTripIntial()),
        ),
        BlocProvider(
          create: (context) =>
              RiderTripBloc(driverTripRepository: getIt<RiderTripRepository>()),
        ),
      ],
      child: BlocBuilder<AuthBloc, AuthState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return state.maybeWhen(
              authenticated: (userCredential, userType) =>
                  userType == UserType.driver
                      ? DriverHomePage()
                      : RiderHomePage(),
              orElse: () {
                return Container();
              });
        },
      ),
    );
  }
}
