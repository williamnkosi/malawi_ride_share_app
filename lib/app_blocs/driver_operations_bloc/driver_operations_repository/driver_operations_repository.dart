import 'package:geolocator/geolocator.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/dtos/driver_connect_dto.dart';
import 'package:malawi_ride_share_app/app_blocs/driver_operations_bloc/driver_operations_repository/dtos/location_dto.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_constants.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_service.dart';

abstract class DriverOperationsRepositoryInterface {
  Future<void> initializeSocket(
      {required String firebaseId, required Position? currentLocation});
  Future<void> goOnline(
      {required String firebaseId, required Position currentLocation});
  Future<void> goOffline();
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
      {required String firebaseId, required Position? currentLocation}) async {
    try {
      await socketService.initialize();
      await socketService.connectWithAuth(
          firebaseId: firebaseId, initialPosition: currentLocation);
      _logger.info('Socket service initialized in DriverOperationsRepository');
    } catch (e) {
      _logger.severe('Failed to initialize socket service: $e');
      // You might want to rethrow or handle this error based on your needs
    }
  }

  @override
  Future<void> goOnline(
      {required String firebaseId, required Position currentLocation}) async {
    try {
      await socketService.connectWithAuth(
          firebaseId: firebaseId, initialPosition: currentLocation);

      _logger.info('Driver connected and auto-registered via auth');

      var location = LocationDto(
        latitude: currentLocation.latitude,
        longitude: currentLocation.longitude,
      );
      var driverConnectDto = DriverConnectDto(
        firebaseId: firebaseId,
        initialLocation: location,
      );

      await socketService.emitWithAck(
          SocketConstants.driverLocationUpdate, driverConnectDto.toJson());
    } catch (e) {
      _logger.severe('Failed to go online: $e');
      throw Exception('Failed to go online: $e');
    }
  }

  Future<void> startTrackingLocation(
      {required String firebaseId, required Position initialPosition}) async {
    try {
      await socketService.emitWithAck(SocketConstants.driverLocationUpdate,
          {'firebaseId': firebaseId, 'location': initialPosition.toJson()});

      _logger.info(
          'Emitting location update for driver: $firebaseId. Current position: ${initialPosition.latitude}, ${initialPosition.longitude}');
    } catch (e) {
      _logger.severe('Failed to start tracking location: $e');
      throw Exception('Failed to start tracking location: $e');
    }
  }

  @override
  Future<void> goOffline() async {
    // TODO: implement goOffline
  }
}
