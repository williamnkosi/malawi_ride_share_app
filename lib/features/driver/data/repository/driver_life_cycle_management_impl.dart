import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_life_cycle_management.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/socket_service_interface.dart';

class DriverLifeCycleManagementImpl implements DriverLifeCycleManagement {
  final SocketServiceInterface socketService;

  DriverLifeCycleManagementImpl({required this.socketService});
  @override
  Future<void> goOffline({required String firebaseId}) {}

  @override
  Future<void> goOnline({required String firebaseId}) {
    // TODO: implement goOnline
    throw UnimplementedError();
  }

  @override
  Future<void> initializeDriver({required String firebaseId}) {
    return socketService.connect();
  }

  @override
  Future<void> updateDriverAvalability() {
    // TODO: implement updateDriverAvalability
    throw UnimplementedError();
  }
}
