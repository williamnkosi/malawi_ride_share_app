/// Rider trip event constants for socket communication
/// These represent the exact event names that the server emits to/from riders
class RiderTripEvents {
  // Prevent instantiation
  const RiderTripEvents._();

  // Incoming events from server (rider receives these)
  static const String driverAccepted = 'trip:driver_accepted';
  static const String driverLocationUpdated = 'trip:driver_location_updated';
  static const String driverArrived = 'trip:driver_arrived';
  static const String tripStarted = 'trip:started';
  static const String tripInProgress = 'trip:in_progress';
  static const String tripCompleted = 'trip:completed';
  static const String tripCancelled = 'trip:cancelled';
  static const String driverCancelled = 'trip:driver_cancelled';
  static const String tripTimeout = 'trip:timeout';
  static const String driverRejected = 'trip:driver_rejected';

  // Outgoing events to server (rider sends these)
  static const String requestTrip = 'trip:request';
  static const String acceptDriver = 'trip:accept_driver';
  static const String cancelTrip = 'trip:cancel';
  static const String rateDriver = 'trip:rate_driver';

  /// All incoming events that riders should listen to
  static const List<String> allIncomingEvents = [
    driverAccepted,
    driverLocationUpdated,
    driverArrived,
    tripStarted,
    tripInProgress,
    tripCompleted,
    tripCancelled,
    driverCancelled,
    tripTimeout,
    driverRejected,
  ];

  /// All outgoing events that riders can send
  static const List<String> allOutgoingEvents = [
    requestTrip,
    acceptDriver,
    cancelTrip,
    rateDriver,
  ];

  /// Get display name for event (for UI/logging)
  static String getDisplayName(String event) {
    switch (event) {
      case driverAccepted:
        return 'Driver Accepted';
      case driverLocationUpdated:
        return 'Driver Location Updated';
      case driverArrived:
        return 'Driver Arrived';
      case tripStarted:
        return 'Trip Started';
      case tripInProgress:
        return 'Trip In Progress';
      case tripCompleted:
        return 'Trip Completed';
      case tripCancelled:
        return 'Trip Cancelled';
      case driverCancelled:
        return 'Driver Cancelled';
      case tripTimeout:
        return 'Trip Timeout';
      case driverRejected:
        return 'Driver Rejected';
      case requestTrip:
        return 'Request Trip';
      case acceptDriver:
        return 'Accept Driver';
      case cancelTrip:
        return 'Cancel Trip';
      case rateDriver:
        return 'Rate Driver';
      default:
        return 'Unknown Event';
    }
  }

  /// Check if an event is a rider trip lifecycle event
  static bool isTripLifecycleEvent(String event) {
    return allIncomingEvents.contains(event) ||
        allOutgoingEvents.contains(event);
  }
}
