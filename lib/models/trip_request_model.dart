import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'trip_request_model.freezed.dart';

@freezed
class TripRequest with _$TripRequest {
  const factory TripRequest({
    required String id,
    required String passengerId,
    required String passengerName,
    required Position pickupLocation,
    required Position dropoffLocation,
    required String pickupAddress,
    required String dropoffAddress,
    required double estimatedDistance,
    required Duration estimatedDuration,
    required double estimatedFare,
    required DateTime requestTime,
    String? specialInstructions,
  }) = _TripRequest;
}
