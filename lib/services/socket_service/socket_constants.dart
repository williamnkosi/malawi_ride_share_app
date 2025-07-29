import 'package:flutter_dotenv/flutter_dotenv.dart';

class SocketConstants {
  // Base WebSocket URL from environment
  static String get socketUrl =>
      'http://${dotenv.env['ip_address']}:${dotenv.env['SOCKET_PORT'] ?? dotenv.env['PORT'] ?? '3000'}';

  // Connection timeout from environment
  static Duration get connectionTimeout => Duration(
        seconds: int.parse(dotenv.env['SOCKET_TIMEOUT_SECONDS'] ?? '10'),
      );

  // Reconnection settings
  static Duration get reconnectDelay => Duration(
        seconds: int.parse(dotenv.env['SOCKET_RECONNECT_DELAY'] ?? '5'),
      );

  static int get maxReconnectAttempts =>
      int.parse(dotenv.env['SOCKET_MAX_RECONNECT_ATTEMPTS'] ?? '5');

  static const String locationTrackingNamespace = '/location-tracking/';

  // =================================================================
  // DRIVER WEBSOCKET EVENTS
  // =================================================================

  // ========================
  // Connection & Registration
  // ========================
  static const String driverConnect = 'driver:connect';
  static const String driverDisconnect = 'driver:disconnect';

  // ========================
  // Location & Status Management
  // ========================
  static const String driverLocationUpdate = 'driver:location_update';
  static const String driverStatusUpdate = 'driver:status_update';
  static const String driverGoOnline = 'driver:go_online';
  static const String driverGoOffline = 'driver:go_offline';

  // ========================
  // Trip Management Events
  // ========================
  // Incoming events (server to driver)
  static const String driverTripRequestReceived =
      'driver:trip_request_received';
  static const String driverTripCancelled = 'driver:trip_cancelled';
  static const String driverTripUpdated = 'driver:trip_updated';

  // Outgoing events (driver to server)
  static const String driverAcceptTrip = 'driver:accept_trip';
  static const String driverDeclineTrip = 'driver:decline_trip';
  static const String driverArrivePickup = 'driver:arrive_pickup';
  static const String driverStartTrip = 'driver:start_trip';
  static const String driverCompleteTrip = 'driver:complete_trip';
  static const String driverCancelTrip = 'driver:cancel_trip';

  // ========================
  // Communication Events
  // ========================
  static const String driverSendMessage = 'driver:send_message';
  static const String driverMessageReceived = 'driver:message_received';
  static const String driverTyping = 'driver:typing';
  static const String driverStoppedTyping = 'driver:stopped_typing';

  // ========================
  // Error & System Events
  // ========================
  static const String driverError = 'driver:error';
  static const String driverAuthError = 'driver:auth_error';
  static const String driverConnectionError = 'driver:connection_error';
  static const String driverReconnected = 'driver:reconnected';

  // ========================
  // Driver Status Values
  // ========================
  static const String statusOnline = 'ONLINE';
  static const String statusOffline = 'OFFLINE';
  static const String statusBusy = 'BUSY';
  static const String statusEnRouteToPickup = 'EN_ROUTE_TO_PICKUP';
  static const String statusWaitingForPassenger = 'WAITING_FOR_PASSENGER';
  static const String statusOnTrip = 'ON_TRIP';
  static const String statusUnavailable = 'UNAVAILABLE';

  // ========================
  // Trip Action Types
  // ========================
  static const String tripActionAccept = 'ACCEPT';
  static const String tripActionDecline = 'DECLINE';
  static const String tripActionCancel = 'CANCEL';
  static const String tripActionComplete = 'COMPLETE';

  // ========================
  // Message Types
  // ========================
  static const String messageTypeText = 'TEXT';
  static const String messageTypeLocation = 'LOCATION';
  static const String messageTypeSystemAlert = 'SYSTEM_ALERT';

  // =================================================================
  // RIDER WEBSOCKET EVENTS (for reference/future use)
  // =================================================================

  // ========================
  // Rider Events
  // ========================
  static const String riderConnect = 'rider:connect';
  static const String riderRequestTrip = 'rider:request_trip';
  static const String riderCancelRequest = 'rider:cancel_request';
  static const String riderSendMessage = 'rider:send_message';
  static const String riderMessageReceived = 'rider:message_received';

  // ========================
  // Helper Methods
  // ========================

  /// Get all driver events for easy debugging/logging
  static List<String> get allDriverEvents => [
        driverConnect,
        driverDisconnect,
        driverLocationUpdate,
        driverStatusUpdate,
        driverGoOnline,
        driverGoOffline,
        driverTripRequestReceived,
        driverTripCancelled,
        driverTripUpdated,
        driverAcceptTrip,
        driverDeclineTrip,
        driverArrivePickup,
        driverStartTrip,
        driverCompleteTrip,
        driverCancelTrip,
        driverSendMessage,
        driverMessageReceived,
        driverTyping,
        driverStoppedTyping,
        driverError,
        driverAuthError,
        driverConnectionError,
        driverReconnected,
      ];

  /// Get all driver status values
  static List<String> get allDriverStatuses => [
        statusOnline,
        statusOffline,
        statusBusy,
        statusEnRouteToPickup,
        statusWaitingForPassenger,
        statusOnTrip,
        statusUnavailable,
      ];

  /// Check if event is a driver event
  static bool isDriverEvent(String event) => allDriverEvents.contains(event);

  /// Check if status is valid
  static bool isValidDriverStatus(String status) =>
      allDriverStatuses.contains(status);
}
