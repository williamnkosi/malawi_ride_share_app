import 'dart:convert';

import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/repository/custom_exception.dart';
import 'package:web_socket_client/web_socket_client.dart';
import 'package:location/location.dart';

final _name = 'LocationRepository';

class LocationRepository {
  WebSocket? _socket;
  final Logger logger = Logger(_name);

  Future<void> connectToServerWebsocket() async {
    if (_socket == null) {
      final uri = Uri.parse('ws://10.0.2.2:8080/ws/drivers');
      final timeout = Duration(seconds: 10);
      final header = {"Authorization": "testing", "DriverId": "1"};

      _socket = WebSocket(uri, headers: header, timeout: timeout);
      _socket!.connection;
    } else {
      throw SocketAlreadyEstablishedException();
    }
  }

  Future<void> sendLocation({required LocationData locationData}) async {
    try {
      if (_socket != null) {
        connectToServerWebsocket();
        Map<String, dynamic> location = {
          'Latitude': locationData.latitude,
          'Longitude': locationData.longitude,
        };
        var data = jsonEncode(location);
        _socket!.send(data);
      } else {
        throw Exception("$_name - Connection already established");
      }
    } on SocketAlreadyEstablishedException catch (e) {
      logger.severe(
          "$_name - Connection already established", e, StackTrace.current);
      rethrow;
    } catch (e) {
      logger.severe("$_name - Error sending location", e, StackTrace.current);
      throw Exception("$_name - Error sending location");
    }
  }

  Future<void> disconnectFromServerWebsocket() async {
    try {
      _socket!.close();
    } catch (e) {
      logger.severe(
          "$_name - Error disconnecting from server", e, StackTrace.current);
      throw Exception("$_name - Error disconnecting from server");
    }
  }
}
