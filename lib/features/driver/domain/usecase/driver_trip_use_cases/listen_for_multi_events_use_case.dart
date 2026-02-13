import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/driver/data/repository/driver_trip_repository.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_trip_repository.dart';

class ListenForMultiEventsUseCase
    implements StreamUseCase<TripEventData, void> {
  final DriverTripRepository driverTripRepository;

  ListenForMultiEventsUseCase({required this.driverTripRepository});

  @override
  Stream<TripEventData> call(void params) {
    return driverTripRepository.listenToAllTripEvents();
  }
}
