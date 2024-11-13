import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:location/location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const MapViewExample(),
    );
  }
}

class MapViewExample extends StatefulWidget {
  const MapViewExample({super.key});

  @override
  _MapViewExampleState createState() => _MapViewExampleState();
}

class _MapViewExampleState extends State<MapViewExample> {
  final Location locationController = Location();
  LatLng? _currentLocation;
  static const _googlePlex = LatLng(37.4223, -122.0848);
  static const _mountainViewLocation = LatLng(37.3861, -122.0839);
  final Map<PolylineId, Polyline> _polylines = {};

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) async => await initializeMap());
  }

  Future<void> initializeMap() async {
    await fetchLocationUpdates();
    final coordinates = await fetchPolylinePoints();
    generatePolyLineFormPoints(coordinates);
  }

  @override
  Widget build(BuildContext context) {
    return _currentLocation == null
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : GoogleMap(
            initialCameraPosition: const CameraPosition(
              target:
                  LatLng(37.4223, -122.0848), // Coordinates for San Francisco
              zoom: 13,
            ),
            markers: {
              Marker(
                  markerId: const MarkerId('currentLcoation'),
                  position: _currentLocation!,
                  icon: BitmapDescriptor.defaultMarker),
              const Marker(
                  markerId: MarkerId('sourceLocation'),
                  position: _googlePlex,
                  icon: BitmapDescriptor.defaultMarker),
              const Marker(
                  markerId: MarkerId('destinationLocation'),
                  position: _mountainViewLocation,
                  icon: BitmapDescriptor.defaultMarker),
            },
            polylines: Set<Polyline>.of(_polylines.values),
          );
  }

  Future<void> fetchLocationUpdates() async {
    // Fetch location updates from the server
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await locationController.serviceEnabled();

    // Check if GPS is enabled
    if (serviceEnabled) {
      serviceEnabled = await locationController.requestService();
    } else {
      return;
    }

    permissionGranted = await locationController.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await locationController.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    locationController.onLocationChanged.listen((LocationData currentLocation) {
      // Use the location data
      if (currentLocation.latitude != null &&
          currentLocation.longitude != null) {
        setState(() {
          _currentLocation =
              LatLng(currentLocation.latitude!, currentLocation.longitude!);
        });
      }
    });
  }

  Future<List<LatLng>> fetchPolylinePoints() async {
    final polyLinePoints = PolylinePoints();
    PolylineRequest request = PolylineRequest(
        origin: PointLatLng(_googlePlex.latitude, _googlePlex.longitude),
        destination: PointLatLng(
            _mountainViewLocation.latitude, _mountainViewLocation.longitude),
        mode: TravelMode.driving);
    final result = await polyLinePoints.getRouteBetweenCoordinates(
        request: request, googleApiKey: dotenv.env['google_maps_apikey']);
    if (result.points.isNotEmpty) {
      return result.points.map((e) => LatLng(e.latitude, e.longitude)).toList();
    } else {
      debugPrint(result.errorMessage);
      print("Failed---p");
      return [];
    }
  }

  Future<void> generatePolyLineFormPoints(
      List<LatLng> polylineCoordinates) async {
    const id = PolylineId('polyline');
    final polyline = Polyline(
      polylineId: id,
      color: Colors.red,
      points: polylineCoordinates,
      width: 5,
    );

    setState(() {
      _polylines[id] = polyline;
    });
  }
}
