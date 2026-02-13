import 'package:geolocator/geolocator.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/location/data/models/location_dto.dart';
import 'package:malawi_ride_share_app/features/location/data/models/location_mapper.dart';
import 'package:malawi_ride_share_app/features/location/domain/entities/location.dart';
import 'package:malawi_ride_share_app/features/location/domain/repository/location_repository.dart';

class LocationRepositoryImpl implements LocationRepository {
  final logger = Logger('LocationRepository');

  @override
  Future<LocationEntity> getCurrentLocation() async {
    try {
      logger.info('📍 Getting current location...');

      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.bestForNavigation,
        timeLimit: const Duration(
          seconds: 60,
        ), // Increased timeout for simulator
      );

      logger.info(
        '✅ Current location: ${position.latitude}, ${position.longitude}',
      );
      var dto = LocationDto.fromPosition(position);
      var locationEntity = LocationMapper.toEntity(dto);
      return locationEntity;
    } catch (e) {
      logger.severe('❌ Error getting current location: $e');
      rethrow;
    }
  }

  @override
  Stream<LocationEntity> getLocationStream({
    required LocationAccuracy locationAccuracy,
  }) {
    logger.info('👂 Starting location stream...');

    return Geolocator.getPositionStream(
          locationSettings: LocationSettings(
            accuracy: locationAccuracy,
            distanceFilter: 2, // Update on every change (good for testing)
            timeLimit: const Duration(seconds: 60),
          ),
        )
        .map((position) {
          var dto = LocationDto.fromPosition(position);
          return LocationMapper.toEntity(dto);
        })
        .handleError((error) {
          logger.severe('❌ Location stream error: $error');
        });
  }

  @override
  double calculateDistance(Position from, Position to) {
    return Geolocator.distanceBetween(
      from.latitude,
      from.longitude,
      to.latitude,
      to.longitude,
    );
  }
}
