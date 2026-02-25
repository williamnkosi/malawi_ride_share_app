import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/driver/data/repository/driver_trip_repository.dart';

class StartTripUseCase implements UseCase<void, String> {
  DriverTripRepositoryImp driverTripRepositoryImp;
  StartTripUseCase({required this.driverTripRepositoryImp});
  @override
  Future<void> call(String tripId) async {
    driverTripRepositoryImp.startTrip(tripId);
  }
}
