import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_constants.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_service.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_service.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:http/http.dart' as http;
import 'package:location/location.dart';

enum SocketConntectionType {
  idleConnection('driver-location-update'),
  tripConnection('driver-location-trip-update');

  final String value;
  const SocketConntectionType(this.value);
}

class DriverTripRepository {
  //late final WebSocket socket;
  late io.Socket socket;
  final logger = Logger('DriverTripRepository');
  final SocketService _socketService = GetIt.instance<SocketService>();
  final ApiService _apiService = GetIt.instance<ApiService>();

  DriverTripRepository();

  void sendLocation({required LocationData locationData}) {
    try {
      logger.info('sendLocation');
      var user = FirebaseAuth.instance.currentUser;
      _socketService.emit('driver-location-update', {
        "firebaseId": user!.uid,
        "driverLocation": {
          "latitude": locationData.latitude,
          "longitude": locationData.longitude
        },
        "status": "looking"
      });
    } catch (e) {
      logger.severe("Failed to send location: $e");
    }
  }

  void sendTripLocation({
    required LocationData locationData,
  }) {
    try {
      logger.info('sendTripLocation');
      var user = FirebaseAuth.instance.currentUser;
      _socketService.emit('driver-location-trip-update', {
        "firebaseId": user!.uid,
        "driverLocation": {
          "latitude": locationData.latitude,
          "longitude": locationData.longitude
        },
        "status": "on-trip"
      });
    } catch (e) {
      logger.severe("Failed to send trip location: $e");
    }
  }

  Future<void> acceptTrip() async {
    try {
      var user = FirebaseAuth.instance.currentUser;
      final response =
          await _apiService.post('/trip/driver-accept-trip/${user!.uid}');
      logger.info("Accepted trip: $response");
    } catch (e) {
      logger.severe("Failed to accept trip: $e");
    }
  }

  void rejectTrip() {
    try {} catch (e) {
      logger.severe("Failed to decline trip: $e");
    }
  }

  void disconnect() {
    try {
      socket.disconnect();
    } catch (e) {
      logger.severe("Failed to disconnect socket: $e");
    }
  }
}
