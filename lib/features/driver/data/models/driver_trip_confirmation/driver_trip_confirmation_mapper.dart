import 'package:malawi_ride_share_app/features/driver/data/models/driver_trip_confirmation/driver_trip_confirmation.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip_confirmation.dart';

class DriverTripConfirmationMapper {
  static DriverTripConfirmationEntity toEntity(DriverTripConfirmation model) {
    return DriverTripConfirmationEntity(
      tripId: model.tripId,
      status: model.status,
      routeToPickup: model.routeToPickup,
      pickup: model.pickup,
      destination: model.destination,
      rider: model.rider,
      passengerCount: model.passengerCount,
      notes: model.notes,
      acceptedAt: model.acceptedAt,
      estimatedPickupTime: model.estimatedPickupTime,
    );
  }
}
