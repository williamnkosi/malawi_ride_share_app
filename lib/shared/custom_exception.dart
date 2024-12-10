class CustomException implements Exception {
  final String message;
  CustomException(this.message);

  @override
  String toString() => "CustomException: $message";
}

void someFunction() {
  throw CustomException("Something went wrong!");
}
