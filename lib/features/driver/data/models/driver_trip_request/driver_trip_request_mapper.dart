import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_request/driver_trip_request.dto.dart';
import 'package:malawi_ride_share_app/features/location/data/models/location_mapper.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';

class DriverTripRequestMapper {
  static DriverTripEntity toEntity(DriverTripRequestDto model) {
    return DriverTripEntity(
      tripId: model.tripId,
      pickupLocation: LocationMapper.toEntity(model.pickupLocation),
      dropoffLocation: LocationMapper.toEntity(model.dropoffLocation),
      passengerCount: model.passengerCount,
      riderFirstName: model.riderFirstName,
      riderLastName: model.riderLastName,
      route: model.route,
    );
  }
}
