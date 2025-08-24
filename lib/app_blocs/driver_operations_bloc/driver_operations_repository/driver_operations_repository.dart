import 'package:geolocator/geolocator.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/dtos/location_dto.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/dtos/update_driver_location_dto.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/models/driver_status.dart';
import 'package:malawi_ride_share_app/services/socket_service/driver_location_socket_service.dart';
import 'package:malawi_ride_share_app/services/socket_service/driver_trip_socket_service.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_constants.dart';

abstract class DriverOperationsRepositoryInterface {
  void initializeSocket();
  Future<void> startTrackingLocation(
      {required String firebaseId, required Position currentLocation});
  void goOffline();
}

class DriverOperationsRepository
    implements DriverOperationsRepositoryInterface {
  final DriverLocationSocketService driverLocationSocketService;
  final DriverTripSocketService driverTripSocketService;

  final Logger _logger = Logger('DriverOperationsRepository');

  DriverOperationsRepository({
    required this.driverLocationSocketService,
    required this.driverTripSocketService,
  });

  @override
  Future<void> initializeSocket() async {
    try {
      await driverLocationSocketService.connectWithAuth();
      await driverTripSocketService.connectWithAuth();
      _logger.info('Socket service initialized in DriverOperationsRepository');
    } catch (e) {
      _logger.severe('Failed to initialize socket service: $e');
      // Disconnect any connected sockets if initialization fails
      await _disconnectAllSockets();
      rethrow;
    }
  }

  /// Disconnects all socket services safely
  Future<void> _disconnectAllSockets() async {
    try {
      _logger.info('Disconnecting all socket services...');

      // Disconnect location socket if connected
      if (driverLocationSocketService.isConnected) {
        driverLocationSocketService.disconnect();
        _logger.info('Location socket disconnected');
      }

      // Disconnect trip socket if connected
      if (driverTripSocketService.isConnected) {
        driverTripSocketService.disconnect();
        _logger.info('Trip socket disconnected');
      }

      _logger.info('All socket services disconnected');
    } catch (e) {
      _logger.severe('Error during socket disconnection: $e');
      // Don't rethrow here - we want to ensure cleanup happens
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

      await driverLocationSocketService.emitWithAck(
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
      driverLocationSocketService.disconnect();

      _logger.info('Driver  went offline and disconnected');
    } catch (e) {
      _logger.severe('Failed to go offline: $e');
      // Still disconnect even if status update fails
      driverLocationSocketService.disconnect();

      rethrow;
    }
  }
}
