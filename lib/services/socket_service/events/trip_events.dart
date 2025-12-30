/// Trip namespace events (/trips)
class TripEvents {
  // ========================
  // Trip Management Events
  // ========================
  // Incoming events (server to driver)
  static const String tripRequestReceived = 'trip:request_received';
  static const String tripAcceptedConfirmation = 'trip:accepted_confirmation';
  static const String tripCancelled = 'trip:cancelled';
  static const String tripUpdated = 'trip:updated';

  // Outgoing events (driver to server)
  static const String acceptTrip = 'trip:accept';
  static const String declineTrip = 'trip:decline';
  static const String arrivePickup = 'trip:arrive_pickup';
  static const String startTrip = 'trip:start';
  static const String completeTrip = 'trip:complete';
  static const String cancelTrip = 'trip:cancel';
}
