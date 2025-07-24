import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
