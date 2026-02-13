import 'package:geolocator/geolocator.dart';
import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/location/domain/entities/location.dart';
import 'package:malawi_ride_share_app/features/location/domain/repository/location_repository.dart';

class GetLocationUseCase implements StreamUseCase<LocationEntity, void> {
  final LocationRepository locationRepository;
  GetLocationUseCase(this.locationRepository);

  @override
  Stream<LocationEntity> call(void params) {
    return locationRepository.getLocationStream(
      locationAccuracy: LocationAccuracy.high,
    );
  }
}
