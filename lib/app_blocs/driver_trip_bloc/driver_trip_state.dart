part of 'driver_trip_bloc.dart';

sealed class DriverTripState extends Equatable {
  const DriverTripState();
  
  @override
  List<Object> get props => [];
}

final class DriverTripInitial extends DriverTripState {}
