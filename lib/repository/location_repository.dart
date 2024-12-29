import 'dart:convert';

import 'package:web_socket_client/web_socket_client.dart';
import 'package:location/location.dart';

class LocationRepository {
  late final WebSocket socket;
  LocationRepository() {
    final uri = Uri.parse('ws://10.0.2.2:8080/ws/drivers');
    final timeout = Duration(seconds: 10);
    final header = {"Authorization": "testing", "DriverId": "1"};
    socket = WebSocket(uri, headers: header, timeout: timeout);
  }
  Future<void> connectToServerWebsocket() async {
    try {
      socket.connection;
    } catch (e) {}
  }

  Future<void> sendLocation({required LocationData locationData}) async {
    try {
      connectToServerWebsocket();
      Map<String, dynamic> location = {
        'Latitude': locationData.latitude,
        'Longitude': locationData.longitude,
      };
      var data = jsonEncode(location);
      socket.send(data);
    } catch (e) {}
  }

  Future<void> disconnectFromServerWebsocket() async {
    try {
      socket.close();
    } catch (e) {}
  }
}
