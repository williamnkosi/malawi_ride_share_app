import 'dart:convert';

class Location {
  double latitude;
  double longitude;
  String id;
  Location({
    required this.latitude,
    required this.longitude,
    required this.id,
  });

  Location copyWith({
    double? latitude,
    double? longitude,
    String? id,
  }) {
    return Location(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'latitude': latitude});
    result.addAll({'longitude': longitude});
    result.addAll({'id': id});

    return result;
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      latitude: map['latitude']?.toDouble() ?? 0.0,
      longitude: map['longitude']?.toDouble() ?? 0.0,
      id: map['id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) =>
      Location.fromMap(json.decode(source));

  @override
  String toString() =>
      'Location(latitude: $latitude, longitude: $longitude, id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Location &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.id == id;
  }

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode ^ id.hashCode;
}
