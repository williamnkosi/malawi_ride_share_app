part of 'driver_operations_bloc.dart';

@freezed
class DriverOperationsState with _$DriverOperationsState {
  // Initial state when bloc is created
  const factory DriverOperationsState.initial() = _Initial;

  // Loading state for any async operations
  const factory DriverOperationsState.loading() = _Loading;

  // Driver is offline
  const factory DriverOperationsState.offline() = _Offline;

  // Driver is online and available for trips
  const factory DriverOperationsState.online() = _Online;

  // Error state
  const factory DriverOperationsState.error({
    required String message,
    DriverOperationsState? previousState,
  }) = _StateError;
}
