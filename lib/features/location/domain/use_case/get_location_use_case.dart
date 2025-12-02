import 'package:geolocator/geolocator.dart';
import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/location/data/repository/location_repository.dart';
import 'package:malawi_ride_share_app/features/location/domain/entities/location.dart';

class GetLocationUseCase implements StreamUseCase<LocationEntity, void> {
  final LocationRepositoryImpl locationRepository;
  GetLocationUseCase(this.locationRepository);

  @override
  Stream<LocationEntity> call(void params) {
    return locationRepository.getLocationStream(
      locationAccuracy: LocationAccuracy.high,
    );
  }
}
