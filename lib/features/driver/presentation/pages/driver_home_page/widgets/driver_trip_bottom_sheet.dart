import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';

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
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: Column(
            children: [
              MapRequestSection(trip: trip),
              TripRequestInfomation(trip: trip),
              TripRequestActions(),
            ],
          ),
        ),
      );
    },
  );
}

class MapRequestSection extends StatelessWidget {
  final DriverTripEntity trip;
  const MapRequestSection({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
            trip.pickupLocation.latitude,
            trip.pickupLocation.longitude,
          ),
          zoom: 14,
        ),
        polylines: {
          Polyline(
            polylineId: PolylineId('route_${trip.tripId}'),
            points: [
              LatLng(
                trip.pickupLocation.latitude,
                trip.pickupLocation.longitude,
              ),
              LatLng(
                trip.dropoffLocation.latitude,
                trip.dropoffLocation.longitude,
              ),
            ],
            color: Colors.blue,
            width: 5,
          ),
        },
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
  const TripRequestActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(onPressed: null, child: Text('Accept')),
        ElevatedButton(onPressed: null, child: Text('Decline')),
      ],
    );
  }
}
