/// Trip event constants for socket communication
/// These represent the exact event names that the server emits
class TripEvents {
  // Prevent instantiation
  const TripEvents._();

  // Incoming events from server
  static const String tripRequest = 'trip:request';
  static const String tripAcceptedConfirmation = 'trip:accepted_confirmation';
  static const String tripDeclined = 'trip:declined';
  static const String tripCancelled = 'trip:cancelled';
  static const String tripStarted = 'trip:started';
  static const String tripCompleted = 'trip:completed';
  static const String tripUpdated = 'trip:updated';

  // Outgoing events to server
  static const String acceptTrip = 'trip:accept';
  static const String declineTrip = 'trip:decline';
  static const String startTrip = 'trip:start';
  static const String completeTrip = 'trip:complete';
  static const String cancelTrip = 'trip:cancel';

  /// All incoming events that drivers should listen to
  static const List<String> allIncomingEvents = [
    // tripRequest,
    tripAcceptedConfirmation,
    tripDeclined,
    tripCancelled,
    tripStarted,
    tripCompleted,
    tripUpdated,
  ];

  /// All outgoing events that drivers can send
  static const List<String> allOutgoingEvents = [
    acceptTrip,
    declineTrip,
    startTrip,
    completeTrip,
    cancelTrip,
  ];

  /// Get display name for event (for UI/logging)
  static String getDisplayName(String event) {
    switch (event) {
      // case tripRequest:
      //   return 'Trip Request';
      case tripAcceptedConfirmation:
        return 'Trip Accepted';
      case tripDeclined:
        return 'Trip Declined';
      case tripCancelled:
        return 'Trip Cancelled';
      case tripStarted:
        return 'Trip Started';
      case tripCompleted:
        return 'Trip Completed';
      case tripUpdated:
        return 'Trip Updated';
      default:
        return 'Unknown Event';
    }
  }

  /// Check if an event is a trip lifecycle event
  static bool isTripLifecycleEvent(String event) {
    return allIncomingEvents.contains(event) ||
        allOutgoingEvents.contains(event);
  }
}
