import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/config/routes/router.dart';
import 'package:malawi_ride_share_app/features/app/presentation/app_bloc/app_bloc.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/bloc/driver_operations_bloc/driver_operations_bloc.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/bloc/driver_trip_bloc/driver_trip_bloc.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/pages/driver_home_page/driver_home_page_view.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/pages/driver_home_page/widgets/driver_trip_bottom_sheet.dart';
import 'package:malawi_ride_share_app/features/location/presentation/location_bloc/location_bloc.dart';
import 'package:malawi_ride_share_app/services/locator.dart';

class DriverHomePage extends StatefulWidget {
  const DriverHomePage({super.key});

  @override
  State<DriverHomePage> createState() => _DriverHomePageState();
}

class _DriverHomePageState extends State<DriverHomePage> {
  final Logger logger = Logger('DriverHomePage');
  @override
  void initState() {
    super.initState();
    // Request location and notification permissions when landing on the driver home page
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AppBloc>().add(const AppEvent.requestLocationPermission());
      context.read<AppBloc>().add(
        const AppEvent.requestNotificationPermission(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<LocationBloc>()),
        BlocProvider(create: (context) => getIt<DriverTripBloc>()),
        BlocProvider(
          create: (context) =>
              getIt<DriverOperationsBloc>()
                ..add(const DriverOperationsEvent.initialize()),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(title: const Text('Driver Home Page')),
        body: MultiBlocListener(
          listeners: [
            BlocListener<AppBloc, AppState>(
              listenWhen: (previous, current) =>
                  previous.isLocationPremissionEnabled !=
                  current.isLocationPremissionEnabled,
              listener: (context, state) {
                if (!state.isLocationPremissionEnabled) {
                  _showLocationPermissionDialog(context);
                } else {
                  // Start location tracking when permission is granted
                  context.read<LocationBloc>().add(
                    const LocationEvent.startTracking(),
                  );
                }
              },
            ),
            BlocListener<DriverOperationsBloc, DriverOperationsState>(
              listener: (context, state) {
                state.maybeWhen(
                  error: (message, previousState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                        backgroundColor: Colors.red,
                      ),
                    );
                  },

                  orElse: () {
                    logger.info('DriverOperationsBloc state changed: $state');
                  },
                );
              },
            ),

            BlocListener<LocationBloc, LocationState>(
              listener: (context, state) {
                state.maybeWhen(
                  active: (location) {
                    context.read<DriverOperationsBloc>().add(
                      DriverOperationsEvent.updateLocation(location: location),
                    );
                  },
                  orElse: () {
                    logger.info('LocationBloc state changed: $state');
                  },
                );
              },
            ),

            BlocListener<DriverTripBloc, DriverTripState>(
              listener: (context, state) {
                logger.info('=== BLOC LISTENER TRIGGERED ===');
                logger.info(
                  'DriverTripBloc state changed: ${state.runtimeType}',
                );
                logger.info('State details: $state');

                state.maybeWhen(
                  requestReceived: (trip, date, timeout) {
                    logger.info('=== REQUEST RECEIVED IN LISTENER ===');
                    logger.info('Trip ID: ${trip.tripId}');
                    showDriverTripBottomSheet(trip: trip, context: context);
                  },
                  idle: () {
                    logger.info('State is idle');
                  },
                  enRouteToPickup: (trip, distance) {
                    // Navigate to active trip page using go_router
                    context.push(AppRoutes.driverActiveTripPage, extra: trip);
                  },
                  requestExpired: () {
                    // Close the bottom sheet if it's open
                    Navigator.of(context).pop();
                    logger.info('Trip request expired ');
                  },

                  orElse: () {
                    logger.info(
                      'State is unhandled type: ${state.runtimeType}',
                    );
                  },
                );
              },
            ),
          ],
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<AppBloc, AppState>(
                  builder: (context, state) {
                    return state.isLocationPremissionEnabled
                        ? const DriverHomePageView()
                        : const SettingsView();
                  },
                ),
              ),
            ],
          ),
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

  void _showTripRequestDialog(
    BuildContext context,
    DriverTripEntity tripRequest,
  ) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('New Trip Request'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Trip ID: ${tripRequest.tripId}'),
              const SizedBox(height: 8),
              Text(
                'Passenger: ${tripRequest.riderFirstName} ${tripRequest.riderLastName}',
              ),
              const SizedBox(height: 8),
              Text('Passenger Count: ${tripRequest.passengerCount}'),
              const SizedBox(height: 8),
              Text(
                'Pickup Location: ${tripRequest.pickupLocation.latitude.toStringAsFixed(6)}, ${tripRequest.pickupLocation.longitude.toStringAsFixed(6)}',
              ),
              const SizedBox(height: 8),
              Text(
                'Dropoff Location: ${tripRequest.dropoffLocation.latitude.toStringAsFixed(6)}, ${tripRequest.dropoffLocation.longitude.toStringAsFixed(6)}',
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
                // context.read<DriverOperationsBloc>().add(
                //   const DriverOperationsEvent.rejectTrip(),
                // );
              },
              child: const Text('Reject'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
                // context.read<DriverOperationsBloc>().add(
                //   DriverOperationsEvent.acceptTrip(),
                // );
              },
              child: const Text('Accept'),
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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OutlinedButton(
            onPressed: () {
              context.read<AppBloc>().add(
                const AppEvent.openLocationSettings(),
              );
            },
            child: Text(
              'Go to Settings',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          SizedBox(height: 20),
          Text('Enable location services to receive trip requests.'),
        ],
      ),
    );
  }
}
