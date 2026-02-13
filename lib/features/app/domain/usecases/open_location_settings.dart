import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/app/domain/repositories/location_permission_repository.dart';

class OpenLocationSettingUseCase implements UseCase<void, void> {
  final LocationPermissionRepository locationRepository;

  OpenLocationSettingUseCase(this.locationRepository);

  @override
  Future<void> call(void _) async {
    return await locationRepository.openLocationSettings();
  }
}
