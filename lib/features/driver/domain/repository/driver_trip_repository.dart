import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';

abstract class DriverTripRepository {
  // Listen to incoming trip requests
  Stream<DriverTripEntity> listenToTripRequests();

  // Listen to trip cancellations
  Stream<String> listenToTripCancellations(); // Returns tripId

  // Actions (emit events)
  Future<void> acceptTrip(String tripId);
  Future<void> declineTrip(String tripId);
  Future<void> completeTrip(String tripId);
}
