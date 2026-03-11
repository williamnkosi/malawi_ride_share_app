// lib/features/rider/domain/entities/rider_trip_events.dart
sealed class RiderTripEvent {}

// Driver accepted and started heading to pickup
class DriverAcceptedEvent extends RiderTripEvent {
  final String driverId;
  final String driverName;
  final String vehicleDetails;
  final double driverLat;
  final double driverLng;

  DriverAcceptedEvent({
    required this.driverId,
    required this.driverName,
    required this.vehicleDetails,
    required this.driverLat,
    required this.driverLng,
  }) : super();
}

// Driver location update
class DriverLocationUpdatedEvent extends RiderTripEvent {
  final double lat;
  final double lng;
  final int eta; // seconds

  DriverLocationUpdatedEvent({
    required this.lat,
    required this.lng,
    required this.eta,
  }) : super();
}

// Trip cancellation
class TripCancelledEvent extends RiderTripEvent {
  final String reason;
  final String cancelledBy; // 'driver' or 'system'

  TripCancelledEvent({required this.reason, required this.cancelledBy})
    : super();
}

// Driver arrived
class DriverArrivedEvent extends RiderTripEvent {
  final double lat;
  final double lng;

  DriverArrivedEvent({required this.lat, required this.lng}) : super();
}

// Trip completed
class TripCompletedEvent extends RiderTripEvent {
  final double totalDistance;
  final int durationSeconds;
  final double totalCost;

  TripCompletedEvent({
    required this.totalDistance,
    required this.durationSeconds,
    required this.totalCost,
  }) : super();
}
