import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/driver/domain/entity/driver_trip.dart';
import 'package:malawi_ride_share_app/features/location/domain/use_case/get_current_location_use_case.dart';
import 'package:malawi_ride_share_app/features/shared/google_maps/domain/entities/route_entity.dart';
import 'package:malawi_ride_share_app/features/shared/google_maps/domain/use_cases/get_route_use.case.dart';

class DriverGetRouteUseCase implements UseCase<void, DriverTripEntity> {
  final GetRouteUseCase getRouteUseCase;
  final GetCurrentLocationUseCase getCurrentLocationUseCase;

  DriverGetRouteUseCase({
    required this.getRouteUseCase,
    required this.getCurrentLocationUseCase,
  });
  @override
  Future<RouteEntity> call(DriverTripEntity trip) async {
    final currentLocation = await getCurrentLocationUseCase(null);
    final routeEntity = getRouteUseCase(
      GetRouteParams(
        originLat: currentLocation.latitude,
        originLng: currentLocation.longitude,
        destinationLat: trip.pickupLocation.latitude,
        destinationLng: trip.pickupLocation.longitude,
      ),
    );
    return routeEntity;
  }
}
