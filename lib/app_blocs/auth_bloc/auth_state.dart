part of 'auth_bloc.dart';

enum UserType { driver, rider }

@freezed
class AuthState with _$AuthState {
  const factory AuthState.start() = _Start; // Initial state
  const factory AuthState.loading() = _Loading; // Loading state
  const factory AuthState.authenticated(
          UserCredential userCredential, UserType userType) =
      _Authenticated; // Authenticated state
  const factory AuthState.unauthenticated() =
      _Unauthenticated; // Unauthenticated state
  const factory AuthState.error(String message) = _Error; // Error state
}
