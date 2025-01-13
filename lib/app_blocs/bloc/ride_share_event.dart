part of 'ride_share_bloc.dart';

@freezed
class RideShareEvent with _$RideShareEvent {
  const factory RideShareEvent.rideShareEventGetDrivers() =
      RideShareEventGetDrivers;
  const factory RideShareEvent.rideShareEventRequestRide() =
      RideShareEventRequestRide;
}
