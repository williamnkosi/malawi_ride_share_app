import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_constants.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_service.dart';

class DriverSocketService extends SocketService {
  final Logger _logger = Logger('DriverSocketService');
  @override
  void setupCustomEventListeners() {
    if (socket == null) return;

    socket!.on(SocketConstants.driverTripRequestReceived, (data) {
      socket!.on('trip_request', (data) {
        _logger.info('Received trip request: $data');
        broadcastEvent('trip_request', data);
      });
    });
    socket!.on(SocketConstants.driverTripCancelled, (data) {
      // Handle trip cancelled
    });
    // ...other driver events
  }
}
