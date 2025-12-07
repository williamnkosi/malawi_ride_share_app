import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_request/driver_trip_request.dto.dart';
import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_request/driver_trip_request_mapper.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';
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
  Stream<DriverTripEntity> listenToTripRequests() {
    return socketRepository
        .listen('trip:request', SocketNamespace.trips.path)
        .map((data) {
          // Add null safety checks
          if (data == null) {
            throw Exception('Received null data from socket');
          }

          final requestData = data['data'];
          if (requestData == null) {
            throw Exception('Trip request data is null');
          }

          try {
            print('Trip request data: $requestData');
            final response = DriverTripRequestDto.fromJson(requestData);
            return DriverTripRequestMapper.toEntity(response);
          } catch (e) {
            throw Exception(
              'Failed to parse trip request: $e. Raw data: $requestData',
            );
          }
        });
  }
}
