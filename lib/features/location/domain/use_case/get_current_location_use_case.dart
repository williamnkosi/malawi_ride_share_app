import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/location/domain/entities/location.dart';
import 'package:malawi_ride_share_app/features/location/domain/repository/location_repository.dart';

class GetCurrentLocationUseCase implements UseCase<LocationEntity, void> {
  final LocationRepository locationRepository;

  GetCurrentLocationUseCase(this.locationRepository);

  @override
  Future<LocationEntity> call(void params) async {
    return await locationRepository.getCurrentLocation();
  }
}
