import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_trip_repository.dart';
import 'package:malawi_ride_share_app/models/trip_request_model.dart';

class DriverTripRepositoryImp implements DriverTripRepository {
  @override
  Future<void> acceptTrip(String tripId) {
    // TODO: implement acceptTrip
    throw UnimplementedError();
  }

  @override
  Future<void> completeTrip(String tripId) {
    // TODO: implement completeTrip
    throw UnimplementedError();
  }

  @override
  Future<void> declineTrip(String tripId) {
    // TODO: implement declineTrip
    throw UnimplementedError();
  }

  @override
  Stream<String> listenToTripCancellations() {
    // TODO: implement listenToTripCancellations
    throw UnimplementedError();
  }

  @override
  Stream<TripRequest> listenToTripRequests() {
    // TODO: implement listenToTripRequests
    throw UnimplementedError();
  }
}
