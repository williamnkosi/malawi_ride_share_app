import 'package:malawi_ride_share_app/features/driver/data/models/location/location_dto.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/bloc/driver_operations_bloc/driver_operations_repository/models/driver_status.dart';

abstract class DriverLocationTrackingRepository {
  Future<void> startTrackingLocation({
    required LocationDto location,
    required DriverStatus status,
  });
  Future<void> stopTrackingLocation();
}
