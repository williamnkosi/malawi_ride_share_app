import 'package:geolocator/geolocator.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/services/socket_service/dtos/driver_connect_dto.dart';
import 'package:malawi_ride_share_app/services/socket_service/dtos/location_dto.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_constants.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_service.dart';

abstract class DriverOperationsRepositoryInterface {
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
    _initializeSocket();
  }

  // Private method to handle socket initialization
  Future<void> _initializeSocket() async {
    try {
      await socketService.initialize();
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
      await socketService.connectWithAuth(firebaseId);

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

  @override
  Future<void> goOffline() async {
    // TODO: implement goOffline
  }
}
