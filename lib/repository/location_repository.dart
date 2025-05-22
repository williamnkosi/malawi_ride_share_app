import 'dart:convert';

import 'package:socket_io_client/socket_io_client.dart' as IO;

import 'package:location/location.dart';

class LocationRepository {
  //late final WebSocket socket;
  late IO.Socket socket;
  LocationRepository();

  void connetToSocketIO() {
    try {
      print("Connecting to socket");
      socket = IO.io(
        "ws://10.0.2.2:3000",
        IO.OptionBuilder()
            .setTransports(['websocket']) // for Flutter or Dart VM
            .enableAutoConnect()
            .build(),
      );
      socket.onConnect((_) {});
    } catch (e) {
      print("Failed to connect to socket: $e");
    }
  }

  void sendLocation({required LocationData locationData}) {
    try {
      socket.emit(
          'driver-location-update',
          jsonEncode({
            "firebaseId": "xUxZHxtfgwdP3ErtaNzwCoko96C3",
            "driverLocation": {
              "latitude": locationData.latitude,
              "longitude": locationData.longitude
            },
            "status": "looking"
          }));
    } catch (e) {
      print("Failed to send location: $e");
    }
  }
}
