// lib/features/driver/domain/entity/driver_trip_request.dart

import 'package:malawi_ride_share_app/features/location/domain/entities/location.dart';

class DriverTripRequestEntity {
  final String tripId;
  final LocationEntity pickupLocation;
  final LocationEntity dropoffLocation;
  final int passengerCount;
  final String riderFirstName;
  final String riderLastName;

  DriverTripRequestEntity({
    required this.tripId,
    required this.pickupLocation,
    required this.dropoffLocation,
    required this.passengerCount,
    required this.riderFirstName,
    required this.riderLastName,
  });

  String get riderFullName => '$riderFirstName $riderLastName';
  bool get hasMultiplePassengers => passengerCount > 1;
}
