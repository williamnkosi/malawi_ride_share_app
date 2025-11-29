import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_request.dto.dart';

abstract class DriverTripRepository {
  // Listen to incoming trip requests
  Stream<TripRequestNotificationDto> listenToTripRequests();

  // Listen to trip cancellations
  Stream<String> listenToTripCancellations(); // Returns tripId

  // Actions (emit events)
  Future<void> acceptTrip(String tripId);
  Future<void> declineTrip(String tripId);
  Future<void> completeTrip(String tripId);
}
