import 'package:firebase_auth/firebase_auth.dart';
import 'package:location/location.dart';
import 'package:logging/logging.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:http/http.dart' as http;

class RiderTripRepository {
  late io.Socket socket;
  final logger = Logger('RiderTripRepository');
  Future<void> requestTrip(
      {required Location startLocation, required Location endLocation}) async {
    try {
      var user = FirebaseAuth.instance.currentUser!.uid;
      var url = Uri.parse("http://192.168.1.211:3000/trip/request");
      var requestBody = {
        "firebaseId": user,
        "startLocation": startLocation,
        "endLocation": endLocation
      };
      final response = await http.post(url, body: requestBody);
    } catch (e) {
      logger.severe("Couldn't request trip: $e");
    }
  }
}
