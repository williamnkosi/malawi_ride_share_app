import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/dtos/location_dto.dart';

part 'driver_connect_dto.freezed.dart';
part 'driver_connect_dto.g.dart';

@freezed
class DriverConnectDto with _$DriverConnectDto {
  const factory DriverConnectDto({
    required String firebaseId,
    LocationDto? location,
  }) = _DriverConnectDto;

  factory DriverConnectDto.fromJson(Map<String, dynamic> json) =>
      _$DriverConnectDtoFromJson(json);
}
