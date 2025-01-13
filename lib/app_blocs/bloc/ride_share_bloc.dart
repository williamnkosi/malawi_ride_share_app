import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_share_bloc.freezed.dart';
part 'ride_share_event.dart';
part 'ride_share_state.dart';

class RideShareBloc extends Bloc<RideShareEvent, RideShareState> {
  RideShareBloc() : super(RideShareInitial()) {
    on<RideShareEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
