import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_polyline_algorithm/google_polyline_algorithm.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/bloc/driver_trip_bloc/driver_trip_bloc.dart';

void showDriverTripBottomSheet({
  required DriverTripEntity trip,
  required BuildContext context,
}) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    backgroundColor: Colors.white,
    isScrollControlled: true,
    builder: (BuildContext modalContext) {
      return BlocProvider.value(
        value: context.read<DriverTripBloc>(),
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            width: double.infinity,
            child: Column(
              children: [
                MapRequestSection(trip: trip),
                TripRequestInfomation(trip: trip),
                TripRequestActions(trip: trip),
              ],
            ),
          ),
        ),
      );
    },
  );
}

class MapRequestSection extends StatefulWidget {
  final DriverTripEntity trip;
  const MapRequestSection({super.key, required this.trip});

  @override
  State<MapRequestSection> createState() => _MapRequestSectionState();
}

class _MapRequestSectionState extends State<MapRequestSection> {
  GoogleMapController? _mapController;

  List<LatLng> _decodePolylineToLatLng(String encoded) {
    List<List<num>> decoded = decodePolyline(encoded);
    return decoded
        .map((point) => LatLng(point[0].toDouble(), point[1].toDouble()))
        .toList();
  }

  LatLngBounds _calculateBounds(List<LatLng> points) {
    double minLat = points.first.latitude;
    double maxLat = points.first.latitude;
    double minLng = points.first.longitude;
    double maxLng = points.first.longitude;

    for (LatLng point in points) {
      minLat = minLat < point.latitude ? minLat : point.latitude;
      maxLat = maxLat > point.latitude ? maxLat : point.latitude;
      minLng = minLng < point.longitude ? minLng : point.longitude;
      maxLng = maxLng > point.longitude ? maxLng : point.longitude;
    }

    return LatLngBounds(
      southwest: LatLng(minLat, minLng),
      northeast: LatLng(maxLat, maxLng),
    );
  }

  void _fitBoundsToRoute() async {
    if (_mapController != null) {
      final points = _decodePolylineToLatLng(widget.trip.route.polyline);
      if (points.isNotEmpty) {
        final bounds = _calculateBounds(points);
        await _mapController!.animateCamera(
          CameraUpdate.newLatLngBounds(bounds, 100.0), // 100.0 is padding
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final routePoints = _decodePolylineToLatLng(widget.trip.route.polyline);

    return Expanded(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(
              widget.trip.pickupLocation.latitude,
              widget.trip.pickupLocation.longitude,
            ),
            zoom: 14,
          ),
          onMapCreated: (GoogleMapController controller) {
            _mapController = controller;
            // Fit bounds after a short delay to ensure map is ready
            Future.delayed(const Duration(milliseconds: 500), () {
              _fitBoundsToRoute();
            });
          },
          polylines: {
            Polyline(
              polylineId: const PolylineId('route'),
              points: routePoints,
              color: Colors.blue,
              width: 5,
            ),
          },
          markers: {
            Marker(
              markerId: const MarkerId('pickup'),
              position: LatLng(
                widget.trip.pickupLocation.latitude,
                widget.trip.pickupLocation.longitude,
              ),
              infoWindow: const InfoWindow(title: 'Pickup Location'),
              icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueGreen,
              ),
            ),
            Marker(
              markerId: const MarkerId('dropoff'),
              position: LatLng(
                widget.trip.dropoffLocation.latitude,
                widget.trip.dropoffLocation.longitude,
              ),
              infoWindow: const InfoWindow(title: 'Dropoff Location'),
              icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueRed,
              ),
            ),
          },
        ),
      ),
    );
  }
}

class TripRequestInfomation extends StatelessWidget {
  final DriverTripEntity trip;
  const TripRequestInfomation({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'New Trip Request',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('Pickup:'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text('Dropoff: '),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('Fare:'),
        ),
      ],
    );
  }
}

class TripRequestActions extends StatelessWidget {
  final DriverTripEntity trip;
  const TripRequestActions({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<DriverTripBloc>(
              context,
            ).add(DriverTripAcceptTrip(trip: trip));
            Navigator.of(context).pop();
          },
          child: Text('Accept'),
        ),
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<DriverTripBloc>(
              context,
            ).add(DriverTripDeclineTrip(trip: trip));
            Navigator.of(context).pop();
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          child: Text('Decline'),
        ),
      ],
    );
  }
}
