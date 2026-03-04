import 'package:malawi_ride_share_app/core/usecase/usecase.dart';

import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_trip_repository.dart';

class StartTripUseCase implements UseCase<void, String> {
  final DriverTripRepository driverTripRepository;
  StartTripUseCase({required this.driverTripRepository});
  @override
  Future<void> call(String tripId) async {
    driverTripRepository.startTrip(tripId);
  }
}
