import 'package:geolocator/geolocator.dart';
import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/app/domain/repositories/location_permission_repository.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_life_cycle_management.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/location_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/socket_repository.dart';

class InitializeUseCase implements UseCase<void, void> {
  final SocketRepository socketRepository;

  final LocationPermissionRepository locationPermissionImpl;
  final LocationRepository locationRepositoryImp;
  final DriverLifeCycleManagement driverLifeCycleManagementImpl;
  InitializeUseCase(this.socketRepository, this.locationPermissionImpl,
      this.locationRepositoryImp, this.driverLifeCycleManagementImpl);

  @override
  Future<Position?> call(void params) async {
    var isConnected = await socketRepository.connect();
    if (!isConnected) throw Exception('Socket connection failed');

    var currentLocation = await locationRepositoryImp.getCurrentLocation();
    //await driverLifeCycleManagementImpl.initializeDriverSession();
    return currentLocation;
  }
}
