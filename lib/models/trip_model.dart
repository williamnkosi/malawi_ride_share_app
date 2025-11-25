import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'trip_model.freezed.dart';

@freezed
class Trip with _$Trip {
  const factory Trip({
    required String id,
    required String passengerId,
    required String passengerName,
    required Position pickupLocation,
    required Position dropoffLocation,
    required String pickupAddress,
    required String dropoffAddress,
    required double estimatedDistance,
    required double estimatedFare,
    required DateTime startTime,
    DateTime? actualPickupTime,
    DateTime? actualDropoffTime,
    double? actualDistance,
    Duration? actualDuration,
    String? tripStatus,
  }) = _Trip;
}
