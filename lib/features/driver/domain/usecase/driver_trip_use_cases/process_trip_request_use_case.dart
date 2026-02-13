import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/driver/domain/constants/trip_events.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_trip_repository.dart';

class ProcessTripRequestUseCase extends SyncUseCase<void, String> {
  final DriverTripRepository driverTripRepository;
  ProcessTripRequestUseCase(this.driverTripRepository);

  @override
  DriverTripEntity call(dynamic tripData) {
    return driverTripRepository.processTripData(
      eventType: TripEvents.tripRequest,
      tripData: tripData,
    );
  }
}
