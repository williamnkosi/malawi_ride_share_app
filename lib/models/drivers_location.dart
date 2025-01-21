import 'package:json_annotation/json_annotation.dart';
import 'package:malawi_ride_share_app/models/location.dart';

part 'drivers_location.g.dart';

@JsonSerializable()
class DriversLocation {
  String driverId;
  Location1 location;

  DriversLocation({
    required this.driverId,
    required this.location,
  });

  factory DriversLocation.fromJson(Map<String, dynamic> json) =>
      _$DriversLocationFromJson(json);
  Map<String, dynamic> toJson() => _$DriversLocationToJson(this);
}
