import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/app/domain/repositories/notification_permission_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/firebase_repository.dart';

class EnsureNotificationPermission implements UseCase<bool, void> {
  final NotificationPermissionRepository notificationPermissionRepository;
  final FirebaseRepository firebaseRepositoryImpl;

  EnsureNotificationPermission(
      this.notificationPermissionRepository, this.firebaseRepositoryImpl);

  @override
  Future<bool> call(void _) async {
    var value = await notificationPermissionRepository.isPermissionGranted();
    value == true ? firebaseRepositoryImpl.registerDevice() : null;
    return await notificationPermissionRepository.isPermissionGranted();
  }
}
