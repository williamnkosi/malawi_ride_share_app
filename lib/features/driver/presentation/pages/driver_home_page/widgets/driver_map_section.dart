import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/bloc/driver_operations_bloc/driver_operations_bloc.dart';

class DriverMapsSection extends StatelessWidget {
  const DriverMapsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DriverOperationsBloc, DriverOperationsState>(
      builder: (context, state) {
        return state.maybeWhen(
          online: (currentLocation) => MapView(
            key: const ValueKey('driver_map'),
            location: currentLocation,
          ),
          offline: (lastKnownLocation) => MapView(
            key: const ValueKey('driver_map'),
            location: lastKnownLocation,
          ),
          orElse: () => Expanded(child: ErrorSection()),
        );
      },
    );
  }
}

class ErrorSection extends StatelessWidget {
  final String? message;

  const ErrorSection({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64, color: Colors.red),
            SizedBox(height: 16),
            Text(
              'Something went wrong',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            if (message != null)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  message!,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class MapView extends StatefulWidget {
  final Position? location;

  const MapView({super.key, this.location});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  GoogleMapController? _mapController;
  Position? _lastPosition;

  @override
  void initState() {
    super.initState();
    _lastPosition = widget.location;
  }

  void _updateCameraPosition(Position? newPosition) {
    if (newPosition == null || _mapController == null) return;

    if (_lastPosition == null ||
        _lastPosition!.latitude != newPosition.latitude ||
        _lastPosition!.longitude != newPosition.longitude) {
      print(
        'ANIMATING CAMERA TO: ${newPosition.latitude}, ${newPosition.longitude}',
      );
      _mapController!.animateCamera(
        CameraUpdate.newLatLng(
          LatLng(newPosition.latitude, newPosition.longitude),
        ),
      );
      _lastPosition = newPosition;
    }
  }

  @override
  void didUpdateWidget(MapView oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget called');
    print(
      'Old location: ${oldWidget.location?.latitude}, ${oldWidget.location?.longitude}',
    );
    print(
      'New location: ${widget.location?.latitude}, ${widget.location?.longitude}',
    );
    _updateCameraPosition(widget.location);
  }

  @override
  void dispose() {
    _mapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<DriverOperationsBloc, DriverOperationsState>(
      listener: (context, state) {
        state.maybeWhen(
          online: (currentLocation) {
            print('BlocListener - online: $currentLocation');
            _updateCameraPosition(currentLocation);
          },
          offline: (lastKnownLocation) {
            print('BlocListener - offline: $lastKnownLocation');
            _updateCameraPosition(lastKnownLocation);
          },
          orElse: () {},
        );
      },
      child: Expanded(
        child: GoogleMap(
          onMapCreated: (GoogleMapController controller) {
            print('Map created, controller ready');
            _mapController = controller;
            _updateCameraPosition(widget.location);
          },
          initialCameraPosition: CameraPosition(
            target: LatLng(
              widget.location?.latitude ?? 0,
              widget.location?.longitude ?? 0,
            ),
            zoom: 15.0,
          ),
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
    );
  }
}
