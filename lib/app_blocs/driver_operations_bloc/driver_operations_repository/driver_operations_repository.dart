import 'package:geolocator/geolocator.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/dtos/driver_connect_dto.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/dtos/location_dto.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/dtos/update_driver_location_dto.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/models/driver_status.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_constants.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_service.dart';

abstract class DriverOperationsRepositoryInterface {
  Future<void> initializeSocket(
      {required String firebaseId, required LocationDto? currentLocation});
  Future<void> goOnline(
      {required String firebaseId, required LocationDto currentLocation});
  Future<void> goOffline({required String firebaseId});
}

class DriverOperationsRepository
    implements DriverOperationsRepositoryInterface {
  final SocketService socketService;

  final Logger _logger = Logger('DriverOperationsRepository');

  DriverOperationsRepository({required this.socketService}) {
    // Initialize socket when repository is created
  }

  // Private method to handle socket initialization
  @override
  Future<void> initializeSocket(
      {required String firebaseId,
      required LocationDto? currentLocation}) async {
    try {
      await socketService.initialize();
      await socketService.connectWithAuth(
          firebaseId: firebaseId, location: currentLocation);
      _logger.info('Socket service initialized in DriverOperationsRepository');
    } catch (e) {
      _logger.severe('Failed to initialize socket service: $e');
      // You might want to rethrow or handle this error based on your needs
    }
  }

  @override
  Future<void> goOnline(
      {required String firebaseId,
      required LocationDto currentLocation}) async {
    try {
      final location = LocationDto(
        latitude: currentLocation.latitude,
        longitude: currentLocation.longitude,
      );
      await socketService.connectWithAuth(
          firebaseId: firebaseId, location: location);
    } catch (e) {
      _logger.severe('Failed to go online: $e');
      throw Exception('Failed to go online: $e');
    }
  }

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
        driverStatus: DriverStatus.online,
      );

      await socketService.emitWithAck(
          SocketConstants.driverLocationUpdate, driverConnectDto.toJson());

      _logger.info(
          'Emitting location update for driver: $firebaseId. Current position: ${location.latitude}, ${location.longitude}');
    } catch (e) {
      _logger.severe('Failed to start tracking location: $e');
      throw Exception('Failed to start tracking location: $e');
    }
  }

  @override
  Future<void> goOffline({required String firebaseId}) async {
    try {
      socketService.disconnect();

      _logger.info('Driver $firebaseId went offline and disconnected');
    } catch (e) {
      _logger.severe('Failed to go offline: $e');
      // Still disconnect even if status update fails
      socketService.disconnect();
      rethrow;
    }
  }
}
