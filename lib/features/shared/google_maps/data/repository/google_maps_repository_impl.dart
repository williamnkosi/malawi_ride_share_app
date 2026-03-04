import 'package:malawi_ride_share_app/features/shared/google_maps/data/data_source/google_maps_remote_data_source.dart';
import 'package:malawi_ride_share_app/features/shared/google_maps/domain/entities/route_entity.dart';
import 'package:malawi_ride_share_app/features/shared/google_maps/domain/repository/google_maps_repository.dart';

class GoogleMapsRepositoryImpl implements GoogleMapsRepository {
  final GoogleMapsRemoteDataSource remoteDataSource;

  GoogleMapsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<RouteEntity> getRoute({
    required double originLat,
    required double originLng,
    required double destinationLat,
    required double destinationLng,
  }) async {
    final model = await remoteDataSource.getRoute(
      originLat: originLat,
      originLng: originLng,
      destinationLat: destinationLat,
      destinationLng: destinationLng,
    );
    return model.toEntity();
  }
}
