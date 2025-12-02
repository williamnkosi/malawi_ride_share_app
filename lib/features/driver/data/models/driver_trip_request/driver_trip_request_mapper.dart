import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_request/driver_trip_request.dto.dart';
import 'package:malawi_ride_share_app/features/driver/data/models/location/location_mapper.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip_request.dart';

class DriverTripRequestMapper {
  static DriverTripRequestEntity toEntity(DriverTripRequestDto model) {
    return DriverTripRequestEntity(
      tripId: model.tripId,
      pickupLocation: LocationMapper.toEntity(model.pickupLocation),
      dropoffLocation: LocationMapper.toEntity(model.dropoffLocation),
      passengerCount: model.passengerCount,
      riderFirstName: model.riderFirstName,
      riderLastName: model.riderLastName,
    );
  }
}
