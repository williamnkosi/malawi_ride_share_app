import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'trip_request_model.freezed.dart';
part 'trip_request_model.g.dart';

@freezed
class TripRequest with _$TripRequest {
  const factory TripRequest({
    required String id,
    required String passengerId,
    required String passengerName,
    @PositionConverter() required Position pickupLocation,
    @PositionConverter() required Position dropoffLocation,
    required String pickupAddress,
    required String dropoffAddress,
    required double estimatedDistance,
    @DurationConverter() required Duration estimatedDuration,
    required double estimatedFare,
    required DateTime requestTime,
    String? specialInstructions,
  }) = _TripRequest;

  factory TripRequest.fromJson(Map<String, dynamic> json) =>
      _$TripRequestFromJson(json);
}

// Custom converter for Position
class PositionConverter
    implements JsonConverter<Position, Map<String, dynamic>> {
  const PositionConverter();

  @override
  Position fromJson(Map<String, dynamic> json) {
    return Position(
      latitude: json['latitude'] as double,
      longitude: json['longitude'] as double,
      timestamp: json['timestamp'] != null
          ? DateTime.parse(json['timestamp'] as String)
          : DateTime.now(),
      accuracy: (json['accuracy'] as num?)?.toDouble() ?? 0.0,
      altitude: (json['altitude'] as num?)?.toDouble() ?? 0.0,
      heading: (json['heading'] as num?)?.toDouble() ?? 0.0,
      speed: (json['speed'] as num?)?.toDouble() ?? 0.0,
      speedAccuracy: (json['speedAccuracy'] as num?)?.toDouble() ?? 0.0,
      altitudeAccuracy: (json['altitudeAccuracy'] as num?)?.toDouble() ?? 0.0,
      headingAccuracy: (json['headingAccuracy'] as num?)?.toDouble() ?? 0.0,
    );
  }

  @override
  Map<String, dynamic> toJson(Position position) {
    return {
      'latitude': position.latitude,
      'longitude': position.longitude,
      'timestamp': position.timestamp.toIso8601String(),
      'accuracy': position.accuracy,
      'altitude': position.altitude,
      'heading': position.heading,
      'speed': position.speed,
      'speedAccuracy': position.speedAccuracy,
      'altitudeAccuracy': position.altitudeAccuracy,
      'headingAccuracy': position.headingAccuracy,
    };
  }
}

// Custom converter for Duration
class DurationConverter implements JsonConverter<Duration, int> {
  const DurationConverter();

  @override
  Duration fromJson(int json) => Duration(seconds: json);

  @override
  int toJson(Duration duration) => duration.inSeconds;
}
