import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_bloc.dart';

class DriverMapsSection extends StatelessWidget {
  const DriverMapsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DriverOperationsBloc, DriverOperationsState>(
      builder: (context, state) {
        return state.maybeWhen(
          online: (currentLocation, isTrackingLocation) => MapView(
            location: currentLocation,
          ),
          offline: (lastKnownLocation) => MapView(
            location: lastKnownLocation,
          ),
          orElse: () => Placeholder(),
        );
      },
    );
  }
}

class MapView extends StatelessWidget {
  final Position? location;
  // Hardcoded location for Lilongwe, Malawi (Capital city)
  static const LatLng _lilongweCenter = LatLng(-13.9626, 33.7741);

  const MapView({super.key, this.location});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          // Map controller ready - can be used later for programmatic control
        },
        initialCameraPosition: CameraPosition(
          target: location != null
              ? LatLng(location!.latitude, location!.longitude)
              : _lilongweCenter,
          zoom: 15.0,
        ),
        markers: {
          Marker(
            markerId: MarkerId('driver_location'),
            position: location != null
                ? LatLng(location!.latitude, location!.longitude)
                : _lilongweCenter,
            infoWindow: InfoWindow(
              title: 'Your Location',
              snippet: 'Driver current position',
            ),
            icon: BitmapDescriptor.defaultMarker,
          )
        },
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
