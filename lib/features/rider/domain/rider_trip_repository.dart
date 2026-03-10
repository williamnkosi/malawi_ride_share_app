abstract class RiderTripRepository {
  /// Request a new trip with pickup and destination details
  Future<Map<String, dynamic>> requestTrip({
    required String pickupAddress,
    required String destinationAddress,
    required double pickupLat,
    required double pickupLng,
    required double destinationLat,
    required double destinationLng,
  });

  /// Cancel an active or pending trip
  Future<void> cancelTrip({required String tripId, String? reason});

  /// Stream real-time trip updates (driver location, status changes, etc.)
  Stream<Map<String, dynamic>> streamTripUpdates({required String tripId});
}
