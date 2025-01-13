part of 'ride_share_bloc.dart';

sealed class RideShareState extends Equatable {
  const RideShareState();
  
  @override
  List<Object> get props => [];
}

final class RideShareInitial extends RideShareState {}
