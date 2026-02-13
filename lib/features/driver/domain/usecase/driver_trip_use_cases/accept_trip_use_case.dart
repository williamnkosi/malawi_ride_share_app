import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_trip_repository.dart';

class AcceptTripUseCase extends UseCase<void, String> {
  final DriverTripRepository driverTripRepository;
  AcceptTripUseCase(this.driverTripRepository);

  @override
  Future<void> call(String tripId) async {
    driverTripRepository.acceptTrip(tripId);
  }
}
