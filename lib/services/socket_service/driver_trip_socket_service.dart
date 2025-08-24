import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_constants.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_service.dart';

class DriverTripSocketService extends SocketService {
  final Logger _logger = Logger('DriverTripSocketService');
  DriverTripSocketService() : super(namespace: SocketConstants.tripsNamespace);
  @override
  void setupCustomEventListeners() {
    // Listen for trip request events
    socket!.on('trip:new_request', (data) {
      _logger.info('Received trip request: $data');
      broadcastEvent('trip:new_request', data);
    });

    socket!.on(SocketConstants.driverTripCancelled, (data) {
      _logger.info('Trip cancelled: $data');
      broadcastEvent(SocketConstants.driverTripCancelled, data);
    });

    _logger.info(
        'Driver socket listeners set up for namespace: ${SocketConstants.tripsNamespace}');
  }
}
