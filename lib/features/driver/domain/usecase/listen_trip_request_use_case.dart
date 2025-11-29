import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_request.dto.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_trip_repository.dart';

class ListenTripRequestUseCase
    implements StreamUseCase<TripRequestNotificationDto, void> {
  final DriverTripRepository driverTripRepository;
  ListenTripRequestUseCase(this.driverTripRepository);

  @override
  Stream<TripRequestNotificationDto> call(void _) {
    return driverTripRepository.listenToTripRequests();
  }
}
