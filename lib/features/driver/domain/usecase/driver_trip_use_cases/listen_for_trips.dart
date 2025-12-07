import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_trip_repository.dart';

class ListenForEvents implements StreamUseCase<DriverTripEntity, void> {
  final DriverTripRepository driverTripRepository;

  ListenForEvents(this.driverTripRepository);

  @override
  Stream<DriverTripEntity> call(void _) {
    return driverTripRepository.listenToTripRequests();
  }
}
