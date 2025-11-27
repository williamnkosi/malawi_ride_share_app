import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malawi_ride_share_app/features/driver/data/models/location_dto.dart';

part 'driver_trip_request.dto.freezed.dart';
part 'driver_trip_request.dto.g.dart';

@freezed
class TripRequestNotificationDto with _$TripRequestNotificationDto {
  const factory TripRequestNotificationDto({
    required String tripId,
    required LocationDto pickupLocation,
    required LocationDto dropoffLocation,
    required int passengerCount,
    required String riderFirstName,
    required String riderLastName,
  }) = _TripRequestNotificationDto;

  factory TripRequestNotificationDto.fromJson(Map<String, dynamic> json) =>
      _$TripRequestNotificationDtoFromJson(json);
}
