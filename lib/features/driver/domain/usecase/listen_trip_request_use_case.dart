import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip_request.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_trip_repository.dart';

class ListenTripRequestUseCase
    implements StreamUseCase<DriverTripRequestEntity, void> {
  final DriverTripRepository driverTripRepository;
  ListenTripRequestUseCase(this.driverTripRepository);

  @override
  Stream<DriverTripRequestEntity> call(void _) {
    return driverTripRepository.listenToTripRequests();
  }
}
