// Base exception
abstract class AppException implements Exception {
  final String message;
  final String? code;
  const AppException(this.message, {this.code});

  @override
  String toString() =>
      'AppException: $message ${code != null ? '($code)' : ''}';
}

// Network exceptions
class NetworkException extends AppException {
  const NetworkException(super.message, {super.code});
}

class ApiException extends AppException {
  final int statusCode;
  const ApiException(super.message, this.statusCode, {super.code});
}

// Existing and new exceptions
class SocketAlreadyEstablishedException extends AppException {
  const SocketAlreadyEstablishedException()
      : super("Connection already established");
}

class LocationException extends AppException {
  const LocationException(super.message, {super.code});
}

class TripException extends AppException {
  const TripException(super.message, {super.code});
}
