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
          online: (currentLocation) => MapView(location: currentLocation),
          offline: (lastKnownLocation) => MapView(location: lastKnownLocation),
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

  @override
  void didUpdateWidget(MapView oldWidget) {
    super.didUpdateWidget(oldWidget);
    // When location updates, animate camera to new position
    if (widget.location != null &&
        oldWidget.location != widget.location &&
        _mapController != null) {
      _mapController!.animateCamera(
        CameraUpdate.newLatLng(
          LatLng(widget.location!.latitude, widget.location!.longitude),
        ),
      );
    }
  }

  @override
  void dispose() {
    _mapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          _mapController = controller;
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(widget.location!.latitude, widget.location!.longitude),
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
    );
  }
}
