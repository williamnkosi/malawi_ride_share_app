import 'package:json_annotation/json_annotation.dart';

part 'drivers_location.g.dart';

@JsonSerializable()
class DriversLocation {
  String driverId;
  double latitude;
  double longitude;

  DriversLocation({
    required this.driverId,
    required this.latitude,
    required this.longitude,
  });

  factory DriversLocation.fromJson(Map<String, dynamic> json) =>
      _$DriversLocationFromJson(json);
  Map<String, dynamic> toJson() => _$DriversLocationToJson(this);
}
