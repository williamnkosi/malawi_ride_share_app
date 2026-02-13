import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';

class DriverActiveTrip extends StatelessWidget {
  final DriverTripEntity trip;

  const DriverActiveTrip({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Active Trip')),
      body: Center(child: Text('Trip ID: ${trip.tripId}')),
    );
  }
}
