// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteModelImpl _$$RouteModelImplFromJson(Map<String, dynamic> json) =>
    _$RouteModelImpl(
      routes:
          (json['routes'] as List<dynamic>)
              .map(
                (e) => RouteResponseRoute.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
    );

Map<String, dynamic> _$$RouteModelImplToJson(_$RouteModelImpl instance) =>
    <String, dynamic>{'routes': instance.routes};

_$RouteResponseRouteImpl _$$RouteResponseRouteImplFromJson(
  Map<String, dynamic> json,
) => _$RouteResponseRouteImpl(
  legs:
      (json['legs'] as List<dynamic>)
          .map((e) => RouteLeg.fromJson(e as Map<String, dynamic>))
          .toList(),
  overviewPolyline: OverviewPolyline.fromJson(
    json['overview_polyline'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$RouteResponseRouteImplToJson(
  _$RouteResponseRouteImpl instance,
) => <String, dynamic>{
  'legs': instance.legs,
  'overview_polyline': instance.overviewPolyline,
};

_$RouteLegImpl _$$RouteLegImplFromJson(
  Map<String, dynamic> json,
) => _$RouteLegImpl(
  distance: DistanceValue.fromJson(json['distance'] as Map<String, dynamic>),
  duration: DurationValue.fromJson(json['duration'] as Map<String, dynamic>),
  steps:
      (json['steps'] as List<dynamic>)
          .map((e) => RouteStep.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$RouteLegImplToJson(_$RouteLegImpl instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'steps': instance.steps,
    };

_$DistanceValueImpl _$$DistanceValueImplFromJson(Map<String, dynamic> json) =>
    _$DistanceValueImpl(
      value: (json['value'] as num).toInt(),
      text: json['text'] as String,
    );

Map<String, dynamic> _$$DistanceValueImplToJson(_$DistanceValueImpl instance) =>
    <String, dynamic>{'value': instance.value, 'text': instance.text};

_$DurationValueImpl _$$DurationValueImplFromJson(Map<String, dynamic> json) =>
    _$DurationValueImpl(
      value: (json['value'] as num).toInt(),
      text: json['text'] as String,
    );

Map<String, dynamic> _$$DurationValueImplToJson(_$DurationValueImpl instance) =>
    <String, dynamic>{'value': instance.value, 'text': instance.text};

_$OverviewPolylineImpl _$$OverviewPolylineImplFromJson(
  Map<String, dynamic> json,
) => _$OverviewPolylineImpl(points: json['points'] as String);

Map<String, dynamic> _$$OverviewPolylineImplToJson(
  _$OverviewPolylineImpl instance,
) => <String, dynamic>{'points': instance.points};

_$RouteStepImpl _$$RouteStepImplFromJson(
  Map<String, dynamic> json,
) => _$RouteStepImpl(
  distance: DistanceValue.fromJson(json['distance'] as Map<String, dynamic>),
  duration: DurationValue.fromJson(json['duration'] as Map<String, dynamic>),
  htmlInstructions: json['html_instructions'] as String,
  startLocation: LatLngModel.fromJson(
    json['start_location'] as Map<String, dynamic>,
  ),
  endLocation: LatLngModel.fromJson(
    json['end_location'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$RouteStepImplToJson(_$RouteStepImpl instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'html_instructions': instance.htmlInstructions,
      'start_location': instance.startLocation,
      'end_location': instance.endLocation,
    };

_$LatLngModelImpl _$$LatLngModelImplFromJson(Map<String, dynamic> json) =>
    _$LatLngModelImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$LatLngModelImplToJson(_$LatLngModelImpl instance) =>
    <String, dynamic>{'lat': instance.lat, 'lng': instance.lng};
