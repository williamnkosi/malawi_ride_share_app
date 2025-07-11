import 'package:firebase_auth/firebase_auth.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/services/api_constants.dart';
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
  DriverTripRepository();

  void connetToSocketIO() {
    try {
      socket = io.io(
        ApiConstants.baseUrl,
        io.OptionBuilder()
            .setTransports(['websocket']) // for Flutter or Dart VM
            .enableAutoConnect()
            .build(),
      );
      socket.onConnect((_) {});
      socket.onError((error) {});
      socket.onDisconnect((_) {});
      socket.onConnectError((error) {});
    } catch (e) {
      logger.severe("Failed to connect to socket: $e");
    }
  }

  void sendLocation({required LocationData locationData}) {
    try {
      logger.info('sendLocation');
      var user = FirebaseAuth.instance.currentUser;
      socket.emit('driver-location-update', {
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
      socket.emit('driver-location-trip-update', {
        "firebaseId": user!.uid,
        "driverLocation": {
          "latitude": locationData.latitude,
          "longitude": locationData.longitude
        },
        "status": "looking"
      });
    } catch (e) {
      logger.severe("Failed to send trip location: $e");
    }
  }

  Future<void> acceptTrip() async {
    try {
      var user = FirebaseAuth.instance.currentUser;
      final response = await http.post(Uri.parse(
          'http://192.168.1.211:3000/trip/driver-accept-trip/${user!.uid}'));
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
