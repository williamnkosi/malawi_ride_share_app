import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_request/driver_trip_route.dto.dart';
import 'package:malawi_ride_share_app/features/location/data/models/location_dto.dart';

part 'driver_trip_request.dto.freezed.dart';
part 'driver_trip_request.dto.g.dart';

@freezed
class DriverTripRequestDto with _$DriverTripRequestDto {
  const factory DriverTripRequestDto({
    required String tripId,
    required LocationDto pickupLocation,
    required LocationDto dropoffLocation,
    required int passengerCount,
    required String riderFirstName,
    required String riderLastName,
    required DriverTripRouteDto route,
  }) = _DriverTripRequestDto;

  const DriverTripRequestDto._();

  factory DriverTripRequestDto.fromJson(Map<String, dynamic> json) =>
      _$DriverTripRequestDtoFromJson(json);
}
