import 'dart:convert';

class Location1 {
  double latitude;
  double longitude;
  String id;
  Location1({
    required this.latitude,
    required this.longitude,
    required this.id,
  });

  Location1 copyWith({
    double? latitude,
    double? longitude,
    String? id,
  }) {
    return Location1(
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

  factory Location1.fromMap(Map<String, dynamic> map) {
    return Location1(
      latitude: map['latitude']?.toDouble() ?? 0.0,
      longitude: map['longitude']?.toDouble() ?? 0.0,
      id: map['id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Location1.fromJson(String source) =>
      Location1.fromMap(json.decode(source));

  @override
  String toString() =>
      'Location1(latitude: $latitude, longitude: $longitude, id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Location1 &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.id == id;
  }

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode ^ id.hashCode;
}
