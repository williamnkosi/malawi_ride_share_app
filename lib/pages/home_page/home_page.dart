import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_text_field.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: MapViewExample(),
    );
  }
}

class MapViewExample extends StatefulWidget {
  @override
  _MapViewExampleState createState() => _MapViewExampleState();
}

class _MapViewExampleState extends State<MapViewExample> {
  GoogleMapController? _controller;

  final CameraPosition _initialPosition = CameraPosition(
    target: LatLng(37.7749, -122.4194), // Coordinates for San Francisco
    zoom: 12,
  );

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: _initialPosition,
      onMapCreated: (GoogleMapController controller) {
        _controller = controller;
      },
      mapType: MapType.normal,
      myLocationEnabled: true, // Enable to show user's current location
      zoomControlsEnabled: false,
    );
  }
}
