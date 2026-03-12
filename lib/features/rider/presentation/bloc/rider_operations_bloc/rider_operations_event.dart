part of 'rider_operations_bloc.dart';

@freezed
class RiderOperationsEvent with _$RiderOperationsEvent {
  const factory RiderOperationsEvent.initialize() = RiderOperationsInitialize;

  /// Request a trip with pickup and destination details
  const factory RiderOperationsEvent.requestTrip({
    required String pickupAddress,
    required String destinationAddress,
    required double pickupLat,
    required double pickupLng,
    required double destinationLat,
    required double destinationLng,
  }) = RequestTripEvent;

  /// Cancel an active or pending trip
  const factory RiderOperationsEvent.cancelTrip({
    required String tripId,
    String? reason,
  }) = CancelTripEvent;

  /// Rate the completed trip and driver
  const factory RiderOperationsEvent.rateTrip({
    required String tripId,
    required int rating,
    String? feedback,
  }) = RateTripEvent;
}
