import 'package:logging/logging.dart';

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
