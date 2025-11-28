import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/driver/data/models/location_dto.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_life_cycle_management.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_location_tracking_repository.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/bloc/driver_operations_bloc/driver_operations_repository/models/driver_status.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/firebase_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/location_repository.dart';

class GoOnLineUseCase implements UseCase<StreamSubscription<Position>, void> {
  final LocationRepository locationRepositoryImp;
  final FirebaseRepository firebaseRepository;
  final DriverLifeCycleManagement driverLifeCycleManagementImpl;
  final DriverLocationTrackingRepository driverLocationTrackingRepository;

  GoOnLineUseCase(
      this.locationRepositoryImp,
      this.firebaseRepository,
      this.driverLifeCycleManagementImpl,
      this.driverLocationTrackingRepository);
  @override
  Future<StreamSubscription<Position>> call(void _) async {
    var id = firebaseRepository.getFirebaseId();
    id != null
        ? driverLifeCycleManagementImpl.goOnline(firebaseId: id)
        : throw Exception('Could not get firebase id');

    driverLifeCycleManagementImpl.goOnline(firebaseId: id);
    var stream = locationRepositoryImp.getLocationStream().listen((position) {
      var location = LocationDto(
          latitude: position.latitude, longitude: position.longitude);
      driverLocationTrackingRepository.startTrackingLocation(
          location: location, status: DriverStatus.online);
    });
    return stream;
  }
}
