import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:location/location.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/services/api_constants.dart';

import 'package:socket_io_client/socket_io_client.dart' as io;

import '../../services/api_serivce/api_service.dart';

class RiderTripRepository {
  late io.Socket socket;
  final logger = Logger('RiderTripRepository');
  final ApiService _apiService = GetIt.instance<ApiService>();

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
      await _apiService.post(ApiConstants.tripRequest, body: requestBody);
    } catch (e) {
      logger.severe("Couldn't request trip: $e");
    }
  }
}
