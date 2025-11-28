import 'package:geolocator/geolocator.dart';
import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/app/domain/repositories/location_permission_interface.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_life_cycle_management.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/location_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/socket_repository.dart';

class InitializeUseCase implements UseCase<void, void> {
  final SocketRepository socketRepository;

  final LocationPermissionInterface locationPermissionImpl;
  final LocationRepository locationRepositoryImp;
  final DriverLifeCycleManagement driverLifeCycleManagementImpl;
  InitializeUseCase(this.socketRepository, this.locationPermissionImpl,
      this.locationRepositoryImp, this.driverLifeCycleManagementImpl);

  @override
  Future<Position?> call(void params) async {
    var val = await locationPermissionImpl.isLocationPermissionGranted();
    if (!val) throw Exception('Location permission not granted');

    var isConnected = await socketRepository.connect();
    if (!isConnected) throw Exception('Socket connection failed');

    var currentLocation = await locationRepositoryImp.getCurrentLocation();
    //await driverLifeCycleManagementImpl.initializeDriverSession();
    return currentLocation;
  }
}
