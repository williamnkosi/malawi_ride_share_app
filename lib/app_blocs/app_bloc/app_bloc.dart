import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:web_socket_client/web_socket_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<AppEventInitial>(_onIntial);
  }

  _onIntial<AppEventInitial>(event, emit) async {
    final uri = Uri.parse('ws://192.168.1.1:8081/ws/drivers');
    print('uri: "$uri"');
    const backoff = ConstantBackoff(Duration(seconds: 1));
    var _socket = WebSocket(uri, backoff: backoff);

    _socket = WebSocket(uri);

    // Listen for connection state changes
    _socket.connection.listen((state) {
      if (state is Connected) {
        print(state);
      } else if (state is Disconnected) {
        print(state);
      } else {
        print(state);
      }
    });

    // socket.messages.listen((message) {
    //   print('message: "$message"');

    //   // Send a message to the server.
    //   socket.send('ping');
    // });
    // await Future<void>.delayed(const Duration(seconds: 3));

    // // Close the connection.
    // socket.close();

    emit(const AppState());
  }
}
