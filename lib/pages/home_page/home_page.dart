import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/pages/home_page/driver_home_page/driver_home_page.dart';
import 'package:malawi_ride_share_app/pages/home_page/rider_home_page/rider_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
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
    );
  }
}
