import 'package:geolocator/geolocator.dart';
import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/app/domain/repositories/location_permission_repository.dart';

class EnsureLocationPermission implements UseCase<bool, void> {
  final LocationPermissionRepository repository;

  EnsureLocationPermission(this.repository);

  @override
  Future<bool> call(void _) async {
    // Get current permission status
    final permissionStatus = await repository.getLocationPermissionStatus();

    // Handle different permission states
    switch (permissionStatus) {
      case LocationPermission.denied:
        // Permission not yet requested or denied once - try to request
        return await repository.requestLocationPermission();

      case LocationPermission.deniedForever:
        // User permanently denied - can't request, must open settings
        return false;

      case LocationPermission.whileInUse:
      case LocationPermission.always:
        // Permission already granted
        return true;

      default:
        // Unhandled state
        return false;
    }
  }
}
