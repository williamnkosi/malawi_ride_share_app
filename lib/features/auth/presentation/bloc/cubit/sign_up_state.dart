part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.loading() = _Loading;
  const factory SignUpState.success(
    UserCredential userCredential,
    UserType userType,
  ) = _Success;
  const factory SignUpState.userDataUpdated(
    UserCredential userCredential,
    UserType userType,
    AuthUserDataEntity? authUserData,
  ) = _UserDataUpdated;
  const factory SignUpState.error(String message) = _Error;
}
