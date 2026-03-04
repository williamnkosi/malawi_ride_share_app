import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_polyline_algorithm/google_polyline_algorithm.dart';

/// Utility class for Google Maps related functions
class GoogleMapsUtils {
  GoogleMapsUtils._();

  /// Decodes a polyline encoded string into a list of [LatLng] points.
  ///
  /// Uses the Google Polyline Algorithm to decode the compressed route data.
  static List<LatLng> decodePolylineToLatLng(String encoded) {
    final List<List<num>> decoded = decodePolyline(encoded);
    return decoded
        .map((point) => LatLng(point[0].toDouble(), point[1].toDouble()))
        .toList();
  }

  /// Calculates the bounding box that contains all the given [points].
  ///
  /// Returns a [LatLngBounds] with southwest and northeast corners
  /// that encompass all points in the list.
  ///
  /// Throws [StateError] if [points] is empty.
  static LatLngBounds calculateBounds(List<LatLng> points) {
    if (points.isEmpty) {
      throw StateError('Cannot calculate bounds for empty points list');
    }

    double minLat = points.first.latitude;
    double maxLat = points.first.latitude;
    double minLng = points.first.longitude;
    double maxLng = points.first.longitude;

    for (final LatLng point in points) {
      minLat = minLat < point.latitude ? minLat : point.latitude;
      maxLat = maxLat > point.latitude ? maxLat : point.latitude;
      minLng = minLng < point.longitude ? minLng : point.longitude;
      maxLng = maxLng > point.longitude ? maxLng : point.longitude;
    }

    return LatLngBounds(
      southwest: LatLng(minLat, minLng),
      northeast: LatLng(maxLat, maxLng),
    );
  }

  /// Fits the map camera to show all points within the bounds with padding.
  ///
  /// [controller] - The GoogleMapController to animate
  /// [points] - List of LatLng points to fit in view
  /// [padding] - Padding around the bounds in logical pixels (default: 100.0)
  static Future<void> fitBoundsToPoints(
    GoogleMapController controller,
    List<LatLng> points, {
    double padding = 100.0,
  }) async {
    if (points.isEmpty) return;

    final bounds = calculateBounds(points);
    await controller.animateCamera(
      CameraUpdate.newLatLngBounds(bounds, padding),
    );
  }
}
