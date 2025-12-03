import 'dart:async';

import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/location/data/models/location_dto.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_location_tracking_repository.dart';
import 'package:malawi_ride_share_app/features/driver/data/models/driver_operations_repository/models/driver_status.dart';
import 'package:malawi_ride_share_app/features/location/domain/entities/location.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/firebase_repository.dart';

class GoOnLineUseCase implements UseCase<void, LocationEntity> {
  final FirebaseRepository firebaseRepository;
  final DriverLocationTrackingRepository driverLocationTrackingRepository;

  GoOnLineUseCase(
    this.firebaseRepository,
    this.driverLocationTrackingRepository,
  );
  @override
  Future<void> call(LocationEntity location) async {
    var id = firebaseRepository.getFirebaseId();
    if (id == null) {
      throw Exception('User not authenticated');
    }
    await driverLocationTrackingRepository.startTrackingLocation(
      location: LocationDto(
        latitude: location.latitude,
        longitude: location.longitude,
      ),
      status: DriverStatus.online,
    );
  }
}
