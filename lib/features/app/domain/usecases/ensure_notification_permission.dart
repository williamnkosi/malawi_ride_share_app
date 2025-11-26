import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/app/domain/repositories/notification_permission_interface.dart';

class EnsureNotificationPermission implements UseCase<bool, void> {
  final NotificationPermissionRepository repository;

  EnsureNotificationPermission(this.repository);

  @override
  Future<bool> call(void _) async {
    return await repository.isPermissionGranted();
  }
}
