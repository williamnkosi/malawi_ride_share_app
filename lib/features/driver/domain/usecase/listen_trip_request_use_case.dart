import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_trip_repository.dart';
import 'package:malawi_ride_share_app/models/trip_request_model.dart';

class ListenTripRequestUseCase implements StreamUseCase<TripRequest, void> {
  final DriverTripRepository driverTripRepository;
  ListenTripRequestUseCase(this.driverTripRepository);

  @override
  Stream<TripRequest> call(void _) {
    return driverTripRepository.listenToTripRequests();
  }
}
