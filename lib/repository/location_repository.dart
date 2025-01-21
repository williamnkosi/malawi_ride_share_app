import 'dart:convert';
import 'package:dio/dio.dart';

import 'package:malawi_ride_share_app/models/drivers_location.dart';
import 'package:malawi_ride_share_app/models/location.dart';
import 'package:web_socket_client/web_socket_client.dart';
import 'package:location/location.dart';
import 'package:http/http.dart' as http;

class LocationRepository {
  final dio = Dio(); // Create a Dio instance
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

  Future<List<DriversLocation>> getDriversLocation() async {
    try {
      List<DriversLocation> driversLocation = [];
      final uri = Uri.parse('http://192.168.1.211:8080/drivers');
      final response = await http.get(uri);

      final body = (JsonDecoder().convert(response.body));

      for (int i = 0; i < body["data"].length; i++) {
        driversLocation.add(DriversLocation(
            driverId: body["data"][i]["driverId"],
            location: Location1(
                id: "testing",
                latitude: body["data"][i]["location"]["latitude"],
                longitude: body["data"][i]["location"]["longitude"])));
      }
      return driversLocation;
    } catch (e) {
      return [];
    }
  }
}
