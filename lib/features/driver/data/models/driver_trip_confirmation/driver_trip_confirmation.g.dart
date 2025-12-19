// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_trip_confirmation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverTripConfirmationImpl _$$DriverTripConfirmationImplFromJson(
  Map<String, dynamic> json,
) => _$DriverTripConfirmationImpl(
  tripId: json['tripId'] as String,
  status: json['status'] as String,
  routeToPickup: Route.fromJson(json['routeToPickup'] as Map<String, dynamic>),
  pickup: LocationDetails.fromJson(json['pickup'] as Map<String, dynamic>),
  destination: LocationDetails.fromJson(
    json['destination'] as Map<String, dynamic>,
  ),
  rider: RiderInfo.fromJson(json['rider'] as Map<String, dynamic>),
  passengerCount: (json['passengerCount'] as num).toInt(),
  notes: json['notes'] as String?,
  acceptedAt: json['acceptedAt'] as String,
  estimatedPickupTime: json['estimatedPickupTime'] as String,
);

Map<String, dynamic> _$$DriverTripConfirmationImplToJson(
  _$DriverTripConfirmationImpl instance,
) => <String, dynamic>{
  'tripId': instance.tripId,
  'status': instance.status,
  'routeToPickup': instance.routeToPickup,
  'pickup': instance.pickup,
  'destination': instance.destination,
  'rider': instance.rider,
  'passengerCount': instance.passengerCount,
  'notes': instance.notes,
  'acceptedAt': instance.acceptedAt,
  'estimatedPickupTime': instance.estimatedPickupTime,
};

_$RouteImpl _$$RouteImplFromJson(Map<String, dynamic> json) => _$RouteImpl(
  distanceKm: (json['distanceKm'] as num).toDouble(),
  durationMin: (json['durationMin'] as num).toDouble(),
  polyline: json['polyline'] as String,
  steps:
      (json['steps'] as List<dynamic>)
          .map((e) => RoutesStepsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$RouteImplToJson(_$RouteImpl instance) =>
    <String, dynamic>{
      'distanceKm': instance.distanceKm,
      'durationMin': instance.durationMin,
      'polyline': instance.polyline,
      'steps': instance.steps,
    };

_$LocationDetailsImpl _$$LocationDetailsImplFromJson(
  Map<String, dynamic> json,
) => _$LocationDetailsImpl(
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  address: json['address'] as String,
);

Map<String, dynamic> _$$LocationDetailsImplToJson(
  _$LocationDetailsImpl instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'address': instance.address,
};

_$RiderInfoImpl _$$RiderInfoImplFromJson(Map<String, dynamic> json) =>
    _$RiderInfoImpl(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
    );

Map<String, dynamic> _$$RiderInfoImplToJson(_$RiderInfoImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
