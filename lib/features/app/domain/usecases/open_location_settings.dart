import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/app/domain/repositories/location_permission_interface.dart';

class OpenLocationSettingUseCase implements UseCase<void, void> {
  final LocationPermissionInterface locationRepository;

  OpenLocationSettingUseCase({required this.locationRepository});

  @override
  Future<void> call(void _) async {
    return await locationRepository.openLocationSettings();
  }
}
