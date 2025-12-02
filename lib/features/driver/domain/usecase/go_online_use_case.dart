import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/driver/data/models/location/location_dto.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_location_tracking_repository.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/bloc/driver_operations_bloc/driver_operations_repository/models/driver_status.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/firebase_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/location_repository.dart';

class GoOnLineUseCase implements StreamUseCase<Position, void> {
  final LocationRepository locationRepositoryImp;
  final FirebaseRepository firebaseRepository;
  final DriverLocationTrackingRepository driverLocationTrackingRepository;

  GoOnLineUseCase(
    this.locationRepositoryImp,
    this.firebaseRepository,
    this.driverLocationTrackingRepository,
  );
  @override
  Stream<Position> call(void _) async* {
    var id = firebaseRepository.getFirebaseId();
    if (id == null) {
      throw Exception('User not authenticated');
    }

    await for (var position in locationRepositoryImp.getLocationStream(
      locationAccuracy: LocationAccuracy.high,
    )) {
      var location = LocationDto(
        latitude: position.latitude,
        longitude: position.longitude,
      );
      driverLocationTrackingRepository.startTrackingLocation(
        location: location,
        status: DriverStatus.online,
      );
      yield position;
    }
  }
}
