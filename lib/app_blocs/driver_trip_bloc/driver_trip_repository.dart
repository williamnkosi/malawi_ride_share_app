import 'package:socket_io_client/socket_io_client.dart' as IO;

import 'package:location/location.dart';

class DriverTripRepository {
  //late final WebSocket socket;
  late IO.Socket socket;
  final subscribeMessage = 'driver-location-update';
  DriverTripRepository();

  void connetToSocketIO() {
    try {
      print("Connecting to socket");
      socket = IO.io(
        "http://192.168.1.211:3000",
        IO.OptionBuilder()
            .setTransports(['websocket']) // for Flutter or Dart VM
            .enableAutoConnect()
            .build(),
      );
      socket.onConnect((_) {
        print("test: Connected to socket");
      });
      socket.onError((error) {
        print("test: Socket error: $error");
      });
      socket.onDisconnect((_) {
        print("test: Disconnected from socket");
      });
      socket.onConnectError((error) {
        print("test: Socket connection error: $error");
        throw Exception("test: Socket connection error: $error");
      });
    } catch (e) {
      print("test: Failed to connect to socket: $e");
    }
  }

  void sendLocation({required LocationData locationData}) {
    try {
      socket.emit(subscribeMessage, {
        "firebaseId": "xUxZHxtfgwdP3ErtaNzwCoko96C3",
        "driverLocation": {
          "latitude": locationData.latitude,
          "longitude": locationData.longitude
        },
        "status": "looking"
      });
    } catch (e) {
      print("test: Failed to send location: $e");
    }
  }

  void disconnect() {
    try {
      socket.disconnect();
    } catch (e) {
      print("Failed to disconnect from socket: $e");
    }
  }
}
