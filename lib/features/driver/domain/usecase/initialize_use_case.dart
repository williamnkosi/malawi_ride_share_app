import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/app/domain/repositories/location_permission_interface.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_life_cycle_management.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/location_repository.dart';

class InitializeUseCase implements UseCase<void, void> {
  final LocationPermissionInterface locationPermissionImpl;
  final LocationRepository locationRepositoryImp;
  final DriverLifeCycleManagement driverLifeCycleManagementImpl;
  InitializeUseCase(this.locationPermissionImpl, this.locationRepositoryImp,
      this.driverLifeCycleManagementImpl);

  @override
  Future<void> call(void params) async {
    var val = await locationPermissionImpl.isLocationPermissionGranted();
    if (!val) throw Exception('Location permission not granted');

    var currentLocation = locationRepositoryImp.getCurrentLocation();
    await driverLifeCycleManagementImpl.initializeDriverSession();
    return;
  }
}
