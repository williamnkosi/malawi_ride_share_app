import 'package:freezed_annotation/freezed_annotation.dart';

part 'rider_request_trip_dto.freezed.dart';
part 'rider_request_trip_dto.g.dart';

@freezed
class RiderRequestLocationDto with _$RiderRequestLocationDto {
  const factory RiderRequestLocationDto({
    required double latitude,
    required double longitude,
    required String address,
  }) = _RiderRequestLocationDto;

  const RiderRequestLocationDto._();

  factory RiderRequestLocationDto.fromJson(Map<String, dynamic> json) =>
      _$RiderRequestLocationDtoFromJson(json);
}

@freezed
class RiderRequestTripDto with _$RiderRequestTripDto {
  const factory RiderRequestTripDto({
    required RiderRequestLocationDto pickupLocation,
    required RiderRequestLocationDto dropoffLocation,
    @Default(1) int passengerCount,
    String? notes,
  }) = _RiderRequestTripDto;

  const RiderRequestTripDto._();

  factory RiderRequestTripDto.fromJson(Map<String, dynamic> json) =>
      _$RiderRequestTripDtoFromJson(json);
}
