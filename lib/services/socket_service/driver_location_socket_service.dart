import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_constants.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_service.dart';

class DriverLocationSocketService extends SocketService {
  final Logger _logger = Logger('DriverLocationSocketService');

  // Constructor that sets the trips namespace
  DriverLocationSocketService()
      : super(namespace: SocketConstants.tripsNamespace);

  @override
  void setupCustomEventListeners() {
    if (socket == null) return;
  }
}
