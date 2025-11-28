import 'package:geolocator/geolocator.dart';
import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/location_repository.dart';

class GoOfflineUseCase implements UseCase<void, void> {
  final LocationRepository locationRepositoryImp;
  GoOfflineUseCase(this.locationRepositoryImp);
  @override
  Future<Position?> call(void params) async {
    var currentLocation = await locationRepositoryImp.getCurrentLocation();
    return currentLocation;
  }
}
