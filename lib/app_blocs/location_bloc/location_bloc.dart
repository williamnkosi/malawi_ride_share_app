import 'package:bloc/bloc.dart';
import 'package:location/location.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationInitial()) {
    on<LocationEvent>(_onGetLocation);
    on<LocationEvent>(_onSendLocation);
  }

  _onGetLocation(event, emit) {}
  _onSendLocation(event, emit) {}
}
