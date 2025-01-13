import 'package:json_annotation/json_annotation.dart';

part 'drivers_location.g.dart';

@JsonSerializable()
class DriversLocation {
  double latitude;
  double longitude;

  DriversLocation({
    required this.latitude,
    required this.longitude,
  });
}
