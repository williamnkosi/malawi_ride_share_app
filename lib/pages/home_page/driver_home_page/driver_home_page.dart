import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:malawi_ride_share_app/app_blocs/app_bloc/app_bloc.dart';

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

class DriverHomePageView extends StatefulWidget {
  const DriverHomePageView({super.key});

  @override
  State<DriverHomePageView> createState() => _DriverHomePageViewState();
}

class _DriverHomePageViewState extends State<DriverHomePageView> {
  // Hardcoded location for Lilongwe, Malawi (Capital city)
  static const LatLng _lilongweCenter = LatLng(-13.9626, 33.7741);

  // Hardcoded marker for driver location
  static const Marker _driverMarker = Marker(
    markerId: MarkerId('driver_location'),
    position: _lilongweCenter,
    infoWindow: InfoWindow(
      title: 'Your Location',
      snippet: 'Driver current position',
    ),
    icon: BitmapDescriptor.defaultMarker,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Driver status bar
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          color: Colors.green.shade50,
          child: Row(
            children: [
              Icon(Icons.circle, color: Colors.green, size: 12),
              const SizedBox(width: 8),
              const Text(
                'Online - Ready for trips',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement go offline functionality
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Go Offline'),
              ),
            ],
          ),
        ),

        // Google Maps view
        Expanded(
          child: GoogleMap(
            onMapCreated: (GoogleMapController controller) {
              // Map controller ready - can be used later for programmatic control
            },
            initialCameraPosition: const CameraPosition(
              target: _lilongweCenter,
              zoom: 15.0,
            ),
            markers: {_driverMarker},
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            compassEnabled: true,
            mapToolbarEnabled: false,
            zoomControlsEnabled: true,
            mapType: MapType.normal,
            onTap: (LatLng position) {
              // TODO: Handle map tap if needed
            },
          ),
        ),

        // Bottom action panel
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: Column(
            children: [
              const Text(
                'Waiting for trip requests...',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        // TODO: Navigate to earnings
                      },
                      icon: const Icon(Icons.attach_money),
                      label: const Text('Earnings'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        // TODO: Navigate to trip history
                      },
                      icon: const Icon(Icons.history),
                      label: const Text('History'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
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
