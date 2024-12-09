part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({UserCredential? user}) = _AuthState;
}
