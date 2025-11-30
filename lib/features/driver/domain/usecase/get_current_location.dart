import 'package:geolocator/geolocator.dart';
import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/location_repository.dart';

class GetCurrentLocationUseCase implements UseCase<Position?, void> {
  final LocationRepository locationRepositoryImp;
  GetCurrentLocationUseCase(this.locationRepositoryImp);

  @override
  Future<Position?> call(void params) async {
    return await locationRepositoryImp.getCurrentLocation();
  }
}
