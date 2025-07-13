import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_service.dart';
import 'package:malawi_ride_share_app/services/socket_service/socket_service.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:location/location.dart';

enum SocketConntectionType {
  idleConnection('driver-location-update'),
  tripConnection('driver-location-trip-update');

  final String value;
  const SocketConntectionType(this.value);
}

class DriverTripRepository {
  final logger = Logger('DriverTripRepository');

  DriverTripRepository();
}
