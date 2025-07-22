part of 'signup_user_cubit.dart';

@freezed
class SignupUserState with _$SignupUserState {
  /// Initial state when page loads
  const factory SignupUserState.initial() = SignupUserInitialState;

  /// Form state with user input data
  const factory SignupUserState.form({
    String? firstName,
    String? lastName,
    String? email,
    String? phoneNumber,
    DateTime? dateOfBirth,
    String? gender,
    String? password,
    String? confirmPassword,
    File? profileImage,
  }) = SignupUserFormState;

  /// Loading state during image operations
  const factory SignupUserState.imageLoading() = SignupUserImageLoadingState;

  /// Loading state during signup submission
  const factory SignupUserState.loading() = SignupUserLoadingState;

  /// Success state after successful signup
  const factory SignupUserState.success() = SignupUserSuccessState;

  /// Error state with error message
  const factory SignupUserState.error(String message) = SignupUserErrorState;
}
