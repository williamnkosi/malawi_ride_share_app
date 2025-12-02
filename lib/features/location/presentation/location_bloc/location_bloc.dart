import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(const LocationState.start()) {
    on<LocationInitial>(_onInitial);
    on<LocationStartTracking>(_onStartTracking);
    on<LocationUpdateSettings>(_onUpdateSettings);
    on<LocationReceived>(_onLocationReceived);
    on<LocationError>(_onLocationError);
  }

  _onInitial(LocationInitial event, Emitter<LocationState> emit) {}
  _onStartTracking(LocationStartTracking event, Emitter<LocationState> emit) {}
  _onUpdateSettings(
    LocationUpdateSettings event,
    Emitter<LocationState> emit,
  ) {}
  _onLocationReceived(LocationReceived event, Emitter<LocationState> emit) {}
  _onLocationError(LocationError event, Emitter<LocationState> emit) {}
}
