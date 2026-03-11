// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rider_request_trip_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RiderRequestLocationDtoImpl _$$RiderRequestLocationDtoImplFromJson(
  Map<String, dynamic> json,
) => _$RiderRequestLocationDtoImpl(
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  address: json['address'] as String,
);

Map<String, dynamic> _$$RiderRequestLocationDtoImplToJson(
  _$RiderRequestLocationDtoImpl instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'address': instance.address,
};

_$RiderRequestTripDtoImpl _$$RiderRequestTripDtoImplFromJson(
  Map<String, dynamic> json,
) => _$RiderRequestTripDtoImpl(
  pickupLocation: RiderRequestLocationDto.fromJson(
    json['pickupLocation'] as Map<String, dynamic>,
  ),
  dropoffLocation: RiderRequestLocationDto.fromJson(
    json['dropoffLocation'] as Map<String, dynamic>,
  ),
  passengerCount: (json['passengerCount'] as num?)?.toInt() ?? 1,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$$RiderRequestTripDtoImplToJson(
  _$RiderRequestTripDtoImpl instance,
) => <String, dynamic>{
  'pickupLocation': instance.pickupLocation,
  'dropoffLocation': instance.dropoffLocation,
  'passengerCount': instance.passengerCount,
  'notes': instance.notes,
};
