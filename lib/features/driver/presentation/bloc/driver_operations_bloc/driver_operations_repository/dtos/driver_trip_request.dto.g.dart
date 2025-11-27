// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_trip_request.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripRequestNotificationDtoImpl _$$TripRequestNotificationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TripRequestNotificationDtoImpl(
      tripId: json['tripId'] as String,
      pickupLocation:
          LocationDto.fromJson(json['pickupLocation'] as Map<String, dynamic>),
      dropoffLocation:
          LocationDto.fromJson(json['dropoffLocation'] as Map<String, dynamic>),
      passengerCount: (json['passengerCount'] as num).toInt(),
      riderFirstName: json['riderFirstName'] as String,
      riderLastName: json['riderLastName'] as String,
    );

Map<String, dynamic> _$$TripRequestNotificationDtoImplToJson(
        _$TripRequestNotificationDtoImpl instance) =>
    <String, dynamic>{
      'tripId': instance.tripId,
      'pickupLocation': instance.pickupLocation,
      'dropoffLocation': instance.dropoffLocation,
      'passengerCount': instance.passengerCount,
      'riderFirstName': instance.riderFirstName,
      'riderLastName': instance.riderLastName,
    };
