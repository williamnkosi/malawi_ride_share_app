import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_confirmation/driver_trip_confirmation.dart';

class DriverTripConfirmationEntity {
  final String tripId;
  final String status;
  final Route routeToPickup;
  final LocationDetails pickup;
  final LocationDetails destination;
  final RiderInfo rider;
  final int passengerCount;
  final String? notes;
  final String acceptedAt;
  final String estimatedPickupTime;

  const DriverTripConfirmationEntity({
    required this.tripId,
    required this.status,
    required this.routeToPickup,
    required this.pickup,
    required this.destination,
    required this.rider,
    required this.passengerCount,
    this.notes,
    required this.acceptedAt,
    required this.estimatedPickupTime,
  });
}
