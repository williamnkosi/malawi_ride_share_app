class DriverTripRequest {
  final String title;
  final String body;
  final Map<String, dynamic> data;

  final String tripId;
  final String riderFirstName;
  final String riderLastName;
  final String startLatitude;
  final String startLongitude;
  final String endLatitude;
  final String endLongitude;
  final String requestedAt;

  DriverTripRequest({
    required this.title,
    required this.body,
    required this.data,
    required this.tripId,
    required this.riderFirstName,
    required this.riderLastName,
    required this.startLatitude,
    required this.startLongitude,
    required this.endLatitude,
    required this.endLongitude,
    required this.requestedAt,
  });

  /// Factory constructor to extract values from a data map
  factory DriverTripRequest.fromMap({
    required String title,
    required String body,
    required Map<String, dynamic> data,
  }) {
    return DriverTripRequest(
      title: title,
      body: body,
      data: data,
      tripId: data['tripId'] ?? '',
      riderFirstName: data['riderfirstName'] ?? '',
      riderLastName: data['riderlastName'] ?? '',
      startLatitude: data['startLatitude'] ?? '',
      startLongitude: data['startLongitude'] ?? '',
      endLatitude: data['endLatitude'] ?? '',
      endLongitude: data['endLongitude'] ?? '',
      requestedAt: data['requestedAt'] ?? '',
    );
  }
}
