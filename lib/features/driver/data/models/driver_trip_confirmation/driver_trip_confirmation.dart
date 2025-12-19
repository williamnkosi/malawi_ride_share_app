import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_request/driver_trip_route_steps.dto.dart';

part 'driver_trip_confirmation.freezed.dart';
part 'driver_trip_confirmation.g.dart';

@freezed
class DriverTripConfirmation with _$DriverTripConfirmation {
  const factory DriverTripConfirmation({
    required String tripId,
    required String status,
    required Route routeToPickup,
    required LocationDetails pickup,
    required LocationDetails destination,
    required RiderInfo rider,
    required int passengerCount,
    String? notes,
    required String acceptedAt,
    required String estimatedPickupTime,
  }) = _DriverTripConfirmation;

  factory DriverTripConfirmation.fromJson(Map<String, dynamic> json) =>
      _$DriverTripConfirmationFromJson(json);
}

@freezed
class Route with _$Route {
  const factory Route({
    required double distanceKm,
    required double durationMin,
    required String polyline,
    required List<RoutesStepsDto> steps,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}

@freezed
class LocationDetails with _$LocationDetails {
  const factory LocationDetails({
    required double latitude,
    required double longitude,
    required String address,
  }) = _LocationDetails;

  factory LocationDetails.fromJson(Map<String, dynamic> json) =>
      _$LocationDetailsFromJson(json);
}

@freezed
class RiderInfo with _$RiderInfo {
  const factory RiderInfo({String? firstName, String? lastName}) = _RiderInfo;

  factory RiderInfo.fromJson(Map<String, dynamic> json) =>
      _$RiderInfoFromJson(json);
}
