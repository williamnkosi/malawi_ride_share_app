part of 'sign_up_cubit.dart';

enum SignUpStatus { initial, loading, success, error }

class SignUpState extends Equatable {
  final SignUpStatus status;
  final UserCredential? userCredential;
  final UserType? userType;
  final AuthUserDataEntity? authUserData;
  final String? error;

  const SignUpState({
    this.status = SignUpStatus.initial,
    this.userCredential,
    this.userType,
    this.authUserData,
    this.error,
  });

  SignUpState copyWith({
    SignUpStatus? status,
    UserCredential? userCredential,
    UserType? userType,
    AuthUserDataEntity? authUserData,
    String? error,
  }) {
    return SignUpState(
      status: status ?? this.status,
      userCredential: userCredential ?? this.userCredential,
      userType: userType ?? this.userType,
      authUserData: authUserData ?? this.authUserData,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [
    status,
    userCredential,
    userType,
    authUserData,
    error,
  ];
}
