import 'package:geolocator/geolocator.dart';
import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_location_tracking_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/firebase_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/location_repository.dart';

class GoOfflineUseCase implements StreamUseCase<Position, void> {
  final LocationRepository locationRepositoryImp;
  final FirebaseRepository firebaseRepository;
  final DriverLocationTrackingRepository driverLocationTrackingRepository;

  GoOfflineUseCase(
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
    driverLocationTrackingRepository.stopTrackingLocation();
    await for (var position in locationRepositoryImp.getLocationStream(
      locationAccuracy: LocationAccuracy.bestForNavigation,
    )) {
      print('Offline position: $position');
      yield position;
    }
  }
}
