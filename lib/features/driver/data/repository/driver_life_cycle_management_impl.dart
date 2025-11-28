import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_life_cycle_management.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/socket_repository.dart';

class DriverLifeCycleManagementImpl implements DriverLifeCycleManagement {
  final SocketRepository socketService;

  DriverLifeCycleManagementImpl({required this.socketService});
  @override
  Future<void> goOffline({required String firebaseId}) async {
    socketService.emit('driver_offline', {'firebaseId': firebaseId});
  }

  @override
  Future<void> goOnline({required String firebaseId}) {
    // socketService.request(event)
    // TODO: implement goOnline
    throw UnimplementedError();
  }

  @override
  Future<void> initializeDriverSession({required String firebaseId}) {
    return socketService.connect();
  }

  @override
  Future<void> updateDriverAvalability() {
    // TODO: implement updateDriverAvalability
    throw UnimplementedError();
  }
}
