import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:location/location.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/services/api_constants.dart';
import 'package:malawi_ride_share_app/services/api_service.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:http/http.dart' as http;

class RiderTripRepository {
  late io.Socket socket;
  final logger = Logger('RiderTripRepository');

  Future<void> requestTrip(
      {required LocationData startLocation,
      required LocationData endLocation}) async {
    try {
      var user = FirebaseAuth.instance.currentUser!.uid;

      var requestBody = {
        "firebaseId": user,
        "startLocation": {
          "latitude": startLocation.latitude.toString(),
          "longitude": startLocation.longitude.toString()
        },
        "endLocation": {
          "latitude": endLocation.latitude.toString(),
          "longitude": endLocation.longitude.toString()
        }
      };
      await ApiService.post(ApiConstants.tripRequest, body: requestBody);
    } catch (e) {
      logger.severe("Couldn't request trip: $e");
    }
  }
}
