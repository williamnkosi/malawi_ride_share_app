import 'package:malawi_ride_share_app/features/location/data/models/location_dto.dart';
import 'package:malawi_ride_share_app/features/location/domain/entities/location.dart';

class LocationMapper {
  static LocationEntity toEntity(LocationDto model) {
    return LocationEntity(latitude: model.latitude, longitude: model.longitude);
  }
}
