import 'rider_trip_events.dart';

// Driver info nested object
class DriverInfo {
  final String id;
  final String firstName;
  final String lastName;

  DriverInfo({
    required this.id,
    required this.firstName,
    required this.lastName,
  });
}

// Estimated arrival nested object
class EstimatedArrival {
  final int minutes;
  final String time; // ISO date string

  EstimatedArrival({required this.minutes, required this.time});
}

// Driver route nested object
class DriverRoute {
  final String polyline;
  final double distanceKm;
  final int durationMin;

  DriverRoute({
    required this.polyline,
    required this.distanceKm,
    required this.durationMin,
  });
}

// Driver found and trip confirmed with route details
// class DriverTripFoundEvent extends RiderTripEvent {
//   final String tripId;
//   final String
//   status; // 'DRIVER_ASSIGNED' | 'DRIVER_CANCELLED' | 'TRIP_CANCELLED'
//   final DriverInfo driver;
//   final EstimatedArrival estimatedArrival;
//   final DriverRoute driverRoute;
//   final String acceptedAt; // ISO date string
//   final String message;

//   DriverTripFoundEvent({
//     required this.tripId,
//     required this.status,
//     required this.driver,
//     required this.estimatedArrival,
//     required this.driverRoute,
//     required this.acceptedAt,
//     required this.message,
//   }) : super();
// }
