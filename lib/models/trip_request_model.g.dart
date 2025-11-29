// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripRequestImpl _$$TripRequestImplFromJson(Map<String, dynamic> json) =>
    _$TripRequestImpl(
      id: json['id'] as String,
      passengerId: json['passengerId'] as String,
      passengerName: json['passengerName'] as String,
      pickupLocation: const PositionConverter().fromJson(
        json['pickupLocation'] as Map<String, dynamic>,
      ),
      dropoffLocation: const PositionConverter().fromJson(
        json['dropoffLocation'] as Map<String, dynamic>,
      ),
      pickupAddress: json['pickupAddress'] as String,
      dropoffAddress: json['dropoffAddress'] as String,
      estimatedDistance: (json['estimatedDistance'] as num).toDouble(),
      estimatedDuration: const DurationConverter().fromJson(
        (json['estimatedDuration'] as num).toInt(),
      ),
      estimatedFare: (json['estimatedFare'] as num).toDouble(),
      requestTime: DateTime.parse(json['requestTime'] as String),
      specialInstructions: json['specialInstructions'] as String?,
    );

Map<String, dynamic> _$$TripRequestImplToJson(
  _$TripRequestImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'passengerId': instance.passengerId,
  'passengerName': instance.passengerName,
  'pickupLocation': const PositionConverter().toJson(instance.pickupLocation),
  'dropoffLocation': const PositionConverter().toJson(instance.dropoffLocation),
  'pickupAddress': instance.pickupAddress,
  'dropoffAddress': instance.dropoffAddress,
  'estimatedDistance': instance.estimatedDistance,
  'estimatedDuration': const DurationConverter().toJson(
    instance.estimatedDuration,
  ),
  'estimatedFare': instance.estimatedFare,
  'requestTime': instance.requestTime.toIso8601String(),
  'specialInstructions': instance.specialInstructions,
};
