import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_constants.dart';
import 'package:malawi_ride_share_app/features/shared/data/repository/socket_service.dart';

class DriverTripSocketService extends SocketService {
  final Logger _logger = Logger('DriverTripSocketService');

  DriverTripSocketService() : super(namespace: SocketConstants.tripsNamespace);

  @override
  void setupCustomEventListeners() {
    if (socket == null) return;

    // Listen for trip request events - match server event name exactly
    socket!.on('trip:new_request', (data) {
      _logger.info('📬 Received trip:new_request: $data');
      broadcastEvent('trip:new_request', data);
    });

    socket!.on(SocketConstants.driverTripCancelled, (data) {
      _logger.info('❌ Trip cancelled: $data');
      broadcastEvent(SocketConstants.driverTripCancelled, data);
    });

    // Add debug listeners for connection events
    socket!.on('connect', (_) {
      _logger.info(
          '🔗 Trip socket connected to namespace: ${SocketConstants.tripsNamespace}');
    });

    socket!.on('disconnect', (reason) {
      _logger.warning('🔌 Trip socket disconnected. Reason: $reason');
    });

    _logger.info(
        '✅ Driver trip socket listeners set up for namespace: ${SocketConstants.tripsNamespace}');
  }

  /// Debug method to listen for ANY event on this socket
  void enableDebugMode() {
    if (socket == null) {
      _logger.warning('Cannot enable debug mode - socket is null');
      return;
    }

    socket!.onAny((event, data) {
      _logger.info('🔍 DEBUG: Received ANY event: "$event" with data: $data');
    });

    _logger.info('🐛 Debug mode enabled - will log ALL incoming events');
  }
}
