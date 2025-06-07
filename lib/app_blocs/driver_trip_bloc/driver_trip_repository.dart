import 'package:logging/logging.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

import 'package:location/location.dart';

class DriverTripRepository {
  //late final WebSocket socket;
  late io.Socket socket;
  final subscribeMessage = 'driver-location-update';
  final logger = Logger('DriverTripRepository');
  DriverTripRepository();

  void connetToSocketIO() {
    try {
      socket = io.io(
        "http://192.168.1.211:3000",
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

  void sendLocation(
      {required LocationData locationData, required String firebaseUserId}) {
    try {
      socket.emit(subscribeMessage, {
        "firebaseId": firebaseUserId,
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

  void disconnect() {
    try {
      socket.disconnect();
    } catch (e) {
      logger.severe("Failed to disconnect socket: $e");
    }
  }
}
