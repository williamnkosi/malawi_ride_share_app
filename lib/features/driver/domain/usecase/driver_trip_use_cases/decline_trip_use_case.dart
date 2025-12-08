import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_trip_repository.dart';

class DeclineTripUseCase extends UseCase<void, String> {
  final DriverTripRepository driverTripRepository;
  DeclineTripUseCase(this.driverTripRepository);

  @override
  Future<void> call(String tripId) {
    return driverTripRepository.declineTrip(tripId);
  }
}
