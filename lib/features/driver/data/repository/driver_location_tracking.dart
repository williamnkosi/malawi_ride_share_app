import 'package:malawi_ride_share_app/features/location/data/models/location_dto.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_location_tracking_repository.dart';
import 'package:malawi_ride_share_app/features/driver/data/models/driver_operations_repository/models/driver_status.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/socket_repository.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_config.dart';

class DriverLocationTrackingRepositoryImpl
    implements DriverLocationTrackingRepository {
  final SocketRepository socketRepository;
  DriverLocationTrackingRepositoryImpl(this.socketRepository);

  @override
  Future<void> startTrackingLocation({
    required LocationDto location,
    required DriverStatus status,
  }) async {
    socketRepository.emit(
      LocationEvents.locationUpdate,
      SocketNamespace.location.path,
      {"location": location.toJson(), "status": status.name.toLowerCase()},
    );
  }

  @override
  Future<void> stopTrackingLocation() {
    // TODO: implement stopTrackingLocation
    throw UnimplementedError();
  }
}
