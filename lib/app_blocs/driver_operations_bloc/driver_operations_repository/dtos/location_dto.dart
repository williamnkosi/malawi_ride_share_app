import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'location_dto.freezed.dart';
part 'location_dto.g.dart';

@freezed
class LocationDto with _$LocationDto {
  const factory LocationDto({
    required double latitude,
    required double longitude,
  }) = _LocationDto;

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);

  // Helper factory to create from Geolocator Position
  factory LocationDto.fromPosition(Position position) {
    return LocationDto(
      latitude: position.latitude,
      longitude: position.longitude,
    );
  }
}
