part of 'driver_operations_bloc.dart';

@freezed
class DriverOperationsEvent with _$DriverOperationsEvent {
  const factory DriverOperationsEvent.started() = _Started;
}