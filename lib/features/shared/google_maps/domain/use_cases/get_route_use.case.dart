import 'package:malawi_ride_share_app/core/usecase/usecase.dart';
import 'package:malawi_ride_share_app/features/google_maps/domain/entities/route_entity.dart';
import 'package:malawi_ride_share_app/features/google_maps/domain/repository/google_maps_repository.dart';

class GetRouteUseCase implements UseCase<RouteEntity, GetRouteParams> {
  final GoogleMapsRepository repository;

  GetRouteUseCase(this.repository);

  @override
  Future<RouteEntity> call(GetRouteParams params) {
    return repository.getRoute(
      originLat: params.originLat,
      originLng: params.originLng,
      destinationLat: params.destinationLat,
      destinationLng: params.destinationLng,
    );
  }
}

class GetRouteParams {
  final double originLat;
  final double originLng;
  final double destinationLat;
  final double destinationLng;

  const GetRouteParams({
    required this.originLat,
    required this.originLng,
    required this.destinationLat,
    required this.destinationLng,
  });
}
