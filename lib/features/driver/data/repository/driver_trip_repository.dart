import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_request/driver_trip_request.dto.dart';
import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_request/driver_trip_request_mapper.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip_request.dart';
import 'package:malawi_ride_share_app/features/driver/domain/repository/driver_trip_repository.dart';
import 'package:malawi_ride_share_app/features/shared/domain/repositories/socket_repository.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_config.dart';

class DriverTripRepositoryImp implements DriverTripRepository {
  final SocketRepository socketRepository;
  DriverTripRepositoryImp(this.socketRepository);
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
  Stream<DriverTripRequestEntity> listenToTripRequests() {
    return socketRepository
        .listen('trip_assiged', SocketNamespace.trips.path)
        .map((data) {
          var response = DriverTripRequestDto.fromJson(data);
          return DriverTripRequestMapper.toEntity(response);
        });
  }
}
