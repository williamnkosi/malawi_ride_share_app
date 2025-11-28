import 'package:malawi_ride_share_app/services/socket_service/socket_constants.dart';

/// Service responsible for determining which socket namespaces to connect to
/// based on user context. This keeps business logic out of the socket repository.
class SocketNamespaceService {
  /// Get required namespaces based on user type and permissions
  static List<String> getRequiredNamespaces({
    required String userType,
    bool includeDriverFeatures = false,
  }) {
    final namespaces = <String>[SocketConstants.tripsNamespace];

    // Add driver-specific namespaces
    if (userType == 'driver' || includeDriverFeatures) {
      namespaces.add(SocketConstants.locationTrackingNamespace);
    }

    return namespaces;
  }

  /// Get all available namespaces (useful for admin or testing)
  static List<String> getAllNamespaces() {
    return [
      SocketConstants.tripsNamespace,
      SocketConstants.locationTrackingNamespace,
    ];
  }

  /// Get namespaces for specific user roles
  static List<String> getNamespacesForDriver() {
    return [
      SocketConstants.tripsNamespace,
      SocketConstants.locationTrackingNamespace,
    ];
  }

  static List<String> getNamespacesForRider() {
    return [
      SocketConstants.tripsNamespace,
    ];
  }
}
