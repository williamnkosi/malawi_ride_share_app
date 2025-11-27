import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malawi_ride_share_app/features/app/presentation/app_bloc/app_bloc.dart';

/// A utility widget that shows location permission status and provides actions
class LocationPermissionWidget extends StatelessWidget {
  final Widget child;
  final bool showPermissionDialog;

  const LocationPermissionWidget({
    super.key,
    required this.child,
    this.showPermissionDialog = true,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listenWhen: (previous, current) =>
          previous.isLocationPremissionEnabled !=
          current.isLocationPremissionEnabled,
      listener: (context, state) {
        if (!state.isLocationPremissionEnabled && showPermissionDialog) {
          _showLocationPermissionDialog(context);
        }
      },
      child: child,
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
            'This app needs location access to provide ride-sharing services. '
            'Please grant location permission to continue.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Later'),
            ),
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

/// A simple button widget to request location permission
class LocationPermissionButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPermissionGranted;

  const LocationPermissionButton({
    super.key,
    this.text,
    this.onPermissionGranted,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        if (state.isLocationPremissionEnabled) {
          return Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.green),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.location_on, color: Colors.green),
                const SizedBox(width: 8),
                Text(
                  'Location Permission Granted',
                  style: TextStyle(color: Colors.green[700]),
                ),
              ],
            ),
          );
        }

        return ElevatedButton.icon(
          onPressed: () {
            context.read<AppBloc>().add(
                  const AppEvent.requestLocationPermission(),
                );
          },
          icon: const Icon(Icons.location_on),
          label: Text(text ?? 'Enable Location'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
          ),
        );
      },
    );
  }
}

/// A status indicator showing current location permission state
class LocationPermissionStatusIndicator extends StatelessWidget {
  const LocationPermissionStatusIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: state.isLocationPremissionEnabled
                ? Colors.green.withOpacity(0.1)
                : Colors.orange.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: state.isLocationPremissionEnabled
                  ? Colors.green
                  : Colors.orange,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                state.isLocationPremissionEnabled
                    ? Icons.location_on
                    : Icons.location_off,
                size: 16,
                color: state.isLocationPremissionEnabled
                    ? Colors.green
                    : Colors.orange,
              ),
              const SizedBox(width: 4),
              Text(
                state.isLocationPremissionEnabled
                    ? 'Location Enabled'
                    : 'Location Disabled',
                style: TextStyle(
                  fontSize: 12,
                  color: state.isLocationPremissionEnabled
                      ? Colors.green[700]
                      : Colors.orange[700],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
