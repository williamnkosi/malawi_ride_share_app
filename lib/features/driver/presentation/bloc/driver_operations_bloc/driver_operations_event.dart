part of 'driver_operations_bloc.dart';

@freezed
class DriverOperationsEvent with _$DriverOperationsEvent {
  // Driver lifecycle events
  const factory DriverOperationsEvent.initialize() = DriverOperationsInitialize;
  const factory DriverOperationsEvent.goOnline() = DriverOperationsGoOnline;
  const factory DriverOperationsEvent.goOffline() = DriverOperationsGoOffline;
  const factory DriverOperationsEvent.updateLocation({
    required LocationEntity location,
  }) = DriverOperationsUpdateLocation;
}
