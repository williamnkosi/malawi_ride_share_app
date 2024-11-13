part of 'location_bloc.dart';

@immutable
sealed class LocationEvent extends Equatable {
  const LocationEvent();
  @override
  List<Object> get props => [];
}

final class GetLocation extends LocationEvent {
  const GetLocation();
}

final class SendLocation extends LocationEvent {
  const SendLocation(this.location);

  final Location location;

  @override
  List<Object> get props => [location];
}
