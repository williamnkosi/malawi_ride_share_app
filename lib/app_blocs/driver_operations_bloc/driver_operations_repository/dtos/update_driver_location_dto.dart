import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/models/driver_status.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/dtos/location_dto.dart';

part 'update_driver_location_dto.freezed.dart';
part 'update_driver_location_dto.g.dart';

@freezed
class UpdateDriverLocationDto with _$UpdateDriverLocationDto {
  const factory UpdateDriverLocationDto({
    required String firebaseId,
    required LocationDto location,
    required DriverStatus driverStatus,
  }) = _UpdateDriverLocationDto;

  factory UpdateDriverLocationDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateDriverLocationDtoFromJson(json);
}
