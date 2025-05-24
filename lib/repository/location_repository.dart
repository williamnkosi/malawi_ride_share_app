import 'dart:convert';

import 'package:socket_io_client/socket_io_client.dart' as IO;

import 'package:location/location.dart';

final _name = 'LocationRepository';

class LocationRepository {
  //late final WebSocket socket;
  late IO.Socket socket;
  LocationRepository();

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
      print('test: ---------');
      print('test: ${locationData.latitude}');
      print('test: ${locationData.longitude}');
      print('test: ---------');
      socket.emit('driver-location-update', {
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
