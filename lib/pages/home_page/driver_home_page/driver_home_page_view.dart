import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_bloc.dart';
import 'package:malawi_ride_share_app/pages/home_page/driver_home_page/widgets/driver_status_bar.dart';
import 'package:malawi_ride_share_app/repository/location_repository.dart';
import 'package:malawi_ride_share_app/services/locator.dart';

class DriverHomePageView extends StatefulWidget {
  const DriverHomePageView({super.key});

  @override
  State<DriverHomePageView> createState() => _DriverHomePageViewState();
}

class _DriverHomePageViewState extends State<DriverHomePageView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DriverOperationsBloc(locationRepository: getIt<LocationRepository>())
            ..add(
              const DriverOperationsEvent.initialize(),
            ),
      child: BlocBuilder<DriverOperationsBloc, DriverOperationsState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            orElse: () {
              return Column(
                children: [
                  // Driver status bar
                  DriverStatusBar(),
                  // Google Maps view
                  DriverMapsSection(),
                  // Bottom action panel
                  DriverOptionsBar(),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class DriverMapsSection extends StatelessWidget {
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

  const DriverMapsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DriverOperationsBloc, DriverOperationsState>(
      builder: (context, state) {
        return Expanded(
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
        );
      },
    );
  }
}

class DriverOptionsBar extends StatelessWidget {
  const DriverOptionsBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
