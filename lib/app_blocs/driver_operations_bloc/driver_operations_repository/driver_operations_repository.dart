import 'package:geolocator/geolocator.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/dtos/location_dto.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/dtos/update_driver_location_dto.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/models/driver_status.dart';
import 'package:malawi_ride_share_app/services/socket_service/driver_socket_service.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_constants.dart';

abstract class DriverOperationsRepositoryInterface {
  void initializeSocket();
  Future<void> startTrackingLocation(
      {required String firebaseId, required Position currentLocation});
  void goOffline();
}

class DriverOperationsRepository
    implements DriverOperationsRepositoryInterface {
  final DriverSocketService driverSocketService;

  final Logger _logger = Logger('DriverOperationsRepository');

  DriverOperationsRepository({
    required this.driverSocketService,
  });

  @override
  Future<void> initializeSocket() async {
    try {
      await driverSocketService.connectWithAuth();
      _logger.info('Socket service initialized in DriverOperationsRepository');
    } catch (e) {
      _logger.severe('Failed to initialize socket service: $e');
    }
  }

  @override
  Future<void> startTrackingLocation(
      {required String firebaseId, required Position currentLocation}) async {
    try {
      var location = LocationDto(
        latitude: currentLocation.latitude,
        longitude: currentLocation.longitude,
      );
      var driverConnectDto = UpdateDriverLocationDto(
        firebaseId: firebaseId,
        location: location,
        status: DriverStatus.online,
      );

      await driverSocketService.emitWithAck(
          SocketConstants.driverLocationUpdate, driverConnectDto.toJson());

      _logger.info(
          'Emitting location update for driver: $firebaseId. Current position: ${location.latitude}, ${location.longitude}');
    } catch (e) {
      _logger.severe('Failed to start tracking location: $e');
      throw Exception('Failed to start tracking location: $e');
    }
  }

  @override
  void goOffline() async {
    try {
      driverSocketService.disconnect();

      _logger.info('Driver  went offline and disconnected');
    } catch (e) {
      _logger.severe('Failed to go offline: $e');
      // Still disconnect even if status update fails
      driverSocketService.disconnect();

      rethrow;
    }
  }
}
