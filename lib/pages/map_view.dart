import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapViewExample extends StatefulWidget {
  const MapViewExample({super.key});

  @override
  _MapViewExampleState createState() => _MapViewExampleState();
}

class _MapViewExampleState extends State<MapViewExample> {
  GoogleMapController? _controller;

  final CameraPosition _initialPosition = const CameraPosition(
    target: LatLng(37.7749, -122.4194), // Coordinates for San Francisco
    zoom: 12,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Map View'),
      ),
      body: GoogleMap(
        initialCameraPosition: _initialPosition,
        onMapCreated: (GoogleMapController controller) {
          _controller = controller;
        },
        mapType: MapType.normal,
        myLocationEnabled: true, // Enable to show user's current location
        zoomControlsEnabled: false,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: MapViewExample()));
}
