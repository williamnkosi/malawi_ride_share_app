import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malawi_ride_share_app/app_blocs/app_bloc/app_bloc.dart';
import 'package:malawi_ride_share_app/pages/home_page/driver_home_page/driver_home_page_view.dart';

class DriverHomePage extends StatefulWidget {
  const DriverHomePage({
    super.key,
  });

  @override
  State<DriverHomePage> createState() => _DriverHomePageState();
}

class _DriverHomePageState extends State<DriverHomePage> {
  @override
  void initState() {
    super.initState();
    // Request location permission when landing on the driver home page
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AppBloc>().add(const AppEvent.checkLocationPermission());
      context
          .read<AppBloc>()
          .add(const AppEvent.requestNotificationPermission());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Driver Home Page'),
      ),
      body: BlocListener<AppBloc, AppState>(
        listenWhen: (previous, current) =>
            previous.isLocationPremissionEnabled !=
            current.isLocationPremissionEnabled,
        listener: (context, state) {
          if (!state.isLocationPremissionEnabled) {
            _showLocationPermissionDialog(context);
          }
        },
        child: BlocBuilder<AppBloc, AppState>(
          builder: (context, state) {
            return state.isLocationPremissionEnabled
                ? const DriverHomePageView()
                : const SettingsView();
          },
        ),
      ),
    );
  }

  void _showLocationPermissionDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Location Permission Required'),
          content: const Text(
            'As a driver, you need to enable location services to receive trip requests and navigate to passengers. Please grant location permission to continue.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Request location permission
                context.read<AppBloc>().add(
                      const AppEvent.requestLocationPermission(),
                    );
              },
              child: const Text('Grant Permission'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Open location settings
                context.read<AppBloc>().add(
                      const AppEvent.openLocationSettings(),
                    );
              },
              child: const Text('Open Settings'),
            ),
          ],
        );
      },
    );
  }
}

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OutlinedButton(
              onPressed: () {
                context
                    .read<AppBloc>()
                    .add(const AppEvent.openLocationSettings());
              },
              child: Text('Go to Settings',
                  style: TextStyle(fontSize: 20, color: Colors.black))),
          SizedBox(height: 20),
          Text('Enable location services to receive trip requests.'),
        ],
      ),
    );
  }
}
