import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/location/data/models/location_dto.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_location_tracking_repository.dart';
import 'package:malawi_ride_share_app/features/driver/presentation/bloc/driver_operations_bloc/driver_operations_repository/models/driver_status.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/firebase_repository.dart';

class GoOnLineUseCase implements StreamUseCase<Position, void> {
  final FirebaseRepository firebaseRepository;
  final DriverLocationTrackingRepository driverLocationTrackingRepository;

  GoOnLineUseCase(
    this.firebaseRepository,
    this.driverLocationTrackingRepository,
  );
  @override
  Stream<Position> call(void _) async* {
    var id = firebaseRepository.getFirebaseId();
    if (id == null) {
      throw Exception('User not authenticated');
    }
    driverLocationTrackingRepository.startTrackingLocation(
      location: LocationDto(latitude: 23, longitude: 23),
      status: DriverStatus.online,
    );
  }
}
