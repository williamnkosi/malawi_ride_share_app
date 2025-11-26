import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/app/domain/repositories/permissions_repository_interface.dart';

class EnsureLocationPermission implements UseCase<bool, void> {
  final PermissionsRepositoryInterface repository;

  EnsureLocationPermission(this.repository);

  @override
  Future<bool> call(void _) async {
    final hasPermission = await repository.isLocationPermissionGranted();
    if (hasPermission) return true;

    return await repository.requestLocationPermission();
  }
}
