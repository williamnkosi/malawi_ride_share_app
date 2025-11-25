// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)
        formUpdate,
    required TResult Function() imageLoading,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
    required TResult Function(String message) permissionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)?
        formUpdate,
    TResult? Function()? imageLoading,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? permissionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)?
        formUpdate,
    TResult Function()? imageLoading,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? permissionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupUserInitialState value) initial,
    required TResult Function(SignupUserFormState value) formUpdate,
    required TResult Function(SignupUserImageLoadingState value) imageLoading,
    required TResult Function(SignupUserLoadingState value) loading,
    required TResult Function(SignupUserSuccessState value) success,
    required TResult Function(SignupUserErrorState value) error,
    required TResult Function(SignupUserPermissionErrorState value)
        permissionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupUserInitialState value)? initial,
    TResult? Function(SignupUserFormState value)? formUpdate,
    TResult? Function(SignupUserImageLoadingState value)? imageLoading,
    TResult? Function(SignupUserLoadingState value)? loading,
    TResult? Function(SignupUserSuccessState value)? success,
    TResult? Function(SignupUserErrorState value)? error,
    TResult? Function(SignupUserPermissionErrorState value)? permissionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupUserInitialState value)? initial,
    TResult Function(SignupUserFormState value)? formUpdate,
    TResult Function(SignupUserImageLoadingState value)? imageLoading,
    TResult Function(SignupUserLoadingState value)? loading,
    TResult Function(SignupUserSuccessState value)? success,
    TResult Function(SignupUserErrorState value)? error,
    TResult Function(SignupUserPermissionErrorState value)? permissionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupUserStateCopyWith<$Res> {
  factory $SignupUserStateCopyWith(
          SignupUserState value, $Res Function(SignupUserState) then) =
      _$SignupUserStateCopyWithImpl<$Res, SignupUserState>;
}

/// @nodoc
class _$SignupUserStateCopyWithImpl<$Res, $Val extends SignupUserState>
    implements $SignupUserStateCopyWith<$Res> {
  _$SignupUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignupUserInitialStateImplCopyWith<$Res> {
  factory _$$SignupUserInitialStateImplCopyWith(
          _$SignupUserInitialStateImpl value,
          $Res Function(_$SignupUserInitialStateImpl) then) =
      __$$SignupUserInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignupUserInitialStateImplCopyWithImpl<$Res>
    extends _$SignupUserStateCopyWithImpl<$Res, _$SignupUserInitialStateImpl>
    implements _$$SignupUserInitialStateImplCopyWith<$Res> {
  __$$SignupUserInitialStateImplCopyWithImpl(
      _$SignupUserInitialStateImpl _value,
      $Res Function(_$SignupUserInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignupUserInitialStateImpl implements SignupUserInitialState {
  const _$SignupUserInitialStateImpl();

  @override
  String toString() {
    return 'SignupUserState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupUserInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)
        formUpdate,
    required TResult Function() imageLoading,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
    required TResult Function(String message) permissionError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)?
        formUpdate,
    TResult? Function()? imageLoading,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? permissionError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)?
        formUpdate,
    TResult Function()? imageLoading,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? permissionError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupUserInitialState value) initial,
    required TResult Function(SignupUserFormState value) formUpdate,
    required TResult Function(SignupUserImageLoadingState value) imageLoading,
    required TResult Function(SignupUserLoadingState value) loading,
    required TResult Function(SignupUserSuccessState value) success,
    required TResult Function(SignupUserErrorState value) error,
    required TResult Function(SignupUserPermissionErrorState value)
        permissionError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupUserInitialState value)? initial,
    TResult? Function(SignupUserFormState value)? formUpdate,
    TResult? Function(SignupUserImageLoadingState value)? imageLoading,
    TResult? Function(SignupUserLoadingState value)? loading,
    TResult? Function(SignupUserSuccessState value)? success,
    TResult? Function(SignupUserErrorState value)? error,
    TResult? Function(SignupUserPermissionErrorState value)? permissionError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupUserInitialState value)? initial,
    TResult Function(SignupUserFormState value)? formUpdate,
    TResult Function(SignupUserImageLoadingState value)? imageLoading,
    TResult Function(SignupUserLoadingState value)? loading,
    TResult Function(SignupUserSuccessState value)? success,
    TResult Function(SignupUserErrorState value)? error,
    TResult Function(SignupUserPermissionErrorState value)? permissionError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SignupUserInitialState implements SignupUserState {
  const factory SignupUserInitialState() = _$SignupUserInitialStateImpl;
}

/// @nodoc
abstract class _$$SignupUserFormStateImplCopyWith<$Res> {
  factory _$$SignupUserFormStateImplCopyWith(_$SignupUserFormStateImpl value,
          $Res Function(_$SignupUserFormStateImpl) then) =
      __$$SignupUserFormStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? email,
      String? phoneNumber,
      DateTime? dateOfBirth,
      Gender? gender,
      String? password,
      String? confirmPassword,
      File? profileImage,
      bool? isFormValid});
}

/// @nodoc
class __$$SignupUserFormStateImplCopyWithImpl<$Res>
    extends _$SignupUserStateCopyWithImpl<$Res, _$SignupUserFormStateImpl>
    implements _$$SignupUserFormStateImplCopyWith<$Res> {
  __$$SignupUserFormStateImplCopyWithImpl(_$SignupUserFormStateImpl _value,
      $Res Function(_$SignupUserFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? profileImage = freezed,
    Object? isFormValid = freezed,
  }) {
    return _then(_$SignupUserFormStateImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as File?,
      isFormValid: freezed == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$SignupUserFormStateImpl implements SignupUserFormState {
  const _$SignupUserFormStateImpl(
      {this.firstName,
      this.lastName,
      this.email,
      this.phoneNumber,
      this.dateOfBirth,
      this.gender,
      this.password,
      this.confirmPassword,
      this.profileImage,
      this.isFormValid});

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final DateTime? dateOfBirth;
  @override
  final Gender? gender;
  @override
  final String? password;
  @override
  final String? confirmPassword;
  @override
  final File? profileImage;
  @override
  final bool? isFormValid;

  @override
  String toString() {
    return 'SignupUserState.formUpdate(firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, gender: $gender, password: $password, confirmPassword: $confirmPassword, profileImage: $profileImage, isFormValid: $isFormValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupUserFormStateImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.isFormValid, isFormValid) ||
                other.isFormValid == isFormValid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      email,
      phoneNumber,
      dateOfBirth,
      gender,
      password,
      confirmPassword,
      profileImage,
      isFormValid);

  /// Create a copy of SignupUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupUserFormStateImplCopyWith<_$SignupUserFormStateImpl> get copyWith =>
      __$$SignupUserFormStateImplCopyWithImpl<_$SignupUserFormStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)
        formUpdate,
    required TResult Function() imageLoading,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
    required TResult Function(String message) permissionError,
  }) {
    return formUpdate(firstName, lastName, email, phoneNumber, dateOfBirth,
        gender, password, confirmPassword, profileImage, isFormValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)?
        formUpdate,
    TResult? Function()? imageLoading,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? permissionError,
  }) {
    return formUpdate?.call(
        firstName,
        lastName,
        email,
        phoneNumber,
        dateOfBirth,
        gender,
        password,
        confirmPassword,
        profileImage,
        isFormValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)?
        formUpdate,
    TResult Function()? imageLoading,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? permissionError,
    required TResult orElse(),
  }) {
    if (formUpdate != null) {
      return formUpdate(firstName, lastName, email, phoneNumber, dateOfBirth,
          gender, password, confirmPassword, profileImage, isFormValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupUserInitialState value) initial,
    required TResult Function(SignupUserFormState value) formUpdate,
    required TResult Function(SignupUserImageLoadingState value) imageLoading,
    required TResult Function(SignupUserLoadingState value) loading,
    required TResult Function(SignupUserSuccessState value) success,
    required TResult Function(SignupUserErrorState value) error,
    required TResult Function(SignupUserPermissionErrorState value)
        permissionError,
  }) {
    return formUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupUserInitialState value)? initial,
    TResult? Function(SignupUserFormState value)? formUpdate,
    TResult? Function(SignupUserImageLoadingState value)? imageLoading,
    TResult? Function(SignupUserLoadingState value)? loading,
    TResult? Function(SignupUserSuccessState value)? success,
    TResult? Function(SignupUserErrorState value)? error,
    TResult? Function(SignupUserPermissionErrorState value)? permissionError,
  }) {
    return formUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupUserInitialState value)? initial,
    TResult Function(SignupUserFormState value)? formUpdate,
    TResult Function(SignupUserImageLoadingState value)? imageLoading,
    TResult Function(SignupUserLoadingState value)? loading,
    TResult Function(SignupUserSuccessState value)? success,
    TResult Function(SignupUserErrorState value)? error,
    TResult Function(SignupUserPermissionErrorState value)? permissionError,
    required TResult orElse(),
  }) {
    if (formUpdate != null) {
      return formUpdate(this);
    }
    return orElse();
  }
}

abstract class SignupUserFormState implements SignupUserState {
  const factory SignupUserFormState(
      {final String? firstName,
      final String? lastName,
      final String? email,
      final String? phoneNumber,
      final DateTime? dateOfBirth,
      final Gender? gender,
      final String? password,
      final String? confirmPassword,
      final File? profileImage,
      final bool? isFormValid}) = _$SignupUserFormStateImpl;

  String? get firstName;
  String? get lastName;
  String? get email;
  String? get phoneNumber;
  DateTime? get dateOfBirth;
  Gender? get gender;
  String? get password;
  String? get confirmPassword;
  File? get profileImage;
  bool? get isFormValid;

  /// Create a copy of SignupUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupUserFormStateImplCopyWith<_$SignupUserFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupUserImageLoadingStateImplCopyWith<$Res> {
  factory _$$SignupUserImageLoadingStateImplCopyWith(
          _$SignupUserImageLoadingStateImpl value,
          $Res Function(_$SignupUserImageLoadingStateImpl) then) =
      __$$SignupUserImageLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignupUserImageLoadingStateImplCopyWithImpl<$Res>
    extends _$SignupUserStateCopyWithImpl<$Res,
        _$SignupUserImageLoadingStateImpl>
    implements _$$SignupUserImageLoadingStateImplCopyWith<$Res> {
  __$$SignupUserImageLoadingStateImplCopyWithImpl(
      _$SignupUserImageLoadingStateImpl _value,
      $Res Function(_$SignupUserImageLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignupUserImageLoadingStateImpl implements SignupUserImageLoadingState {
  const _$SignupUserImageLoadingStateImpl();

  @override
  String toString() {
    return 'SignupUserState.imageLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupUserImageLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)
        formUpdate,
    required TResult Function() imageLoading,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
    required TResult Function(String message) permissionError,
  }) {
    return imageLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)?
        formUpdate,
    TResult? Function()? imageLoading,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? permissionError,
  }) {
    return imageLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)?
        formUpdate,
    TResult Function()? imageLoading,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? permissionError,
    required TResult orElse(),
  }) {
    if (imageLoading != null) {
      return imageLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupUserInitialState value) initial,
    required TResult Function(SignupUserFormState value) formUpdate,
    required TResult Function(SignupUserImageLoadingState value) imageLoading,
    required TResult Function(SignupUserLoadingState value) loading,
    required TResult Function(SignupUserSuccessState value) success,
    required TResult Function(SignupUserErrorState value) error,
    required TResult Function(SignupUserPermissionErrorState value)
        permissionError,
  }) {
    return imageLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupUserInitialState value)? initial,
    TResult? Function(SignupUserFormState value)? formUpdate,
    TResult? Function(SignupUserImageLoadingState value)? imageLoading,
    TResult? Function(SignupUserLoadingState value)? loading,
    TResult? Function(SignupUserSuccessState value)? success,
    TResult? Function(SignupUserErrorState value)? error,
    TResult? Function(SignupUserPermissionErrorState value)? permissionError,
  }) {
    return imageLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupUserInitialState value)? initial,
    TResult Function(SignupUserFormState value)? formUpdate,
    TResult Function(SignupUserImageLoadingState value)? imageLoading,
    TResult Function(SignupUserLoadingState value)? loading,
    TResult Function(SignupUserSuccessState value)? success,
    TResult Function(SignupUserErrorState value)? error,
    TResult Function(SignupUserPermissionErrorState value)? permissionError,
    required TResult orElse(),
  }) {
    if (imageLoading != null) {
      return imageLoading(this);
    }
    return orElse();
  }
}

abstract class SignupUserImageLoadingState implements SignupUserState {
  const factory SignupUserImageLoadingState() =
      _$SignupUserImageLoadingStateImpl;
}

/// @nodoc
abstract class _$$SignupUserLoadingStateImplCopyWith<$Res> {
  factory _$$SignupUserLoadingStateImplCopyWith(
          _$SignupUserLoadingStateImpl value,
          $Res Function(_$SignupUserLoadingStateImpl) then) =
      __$$SignupUserLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignupUserLoadingStateImplCopyWithImpl<$Res>
    extends _$SignupUserStateCopyWithImpl<$Res, _$SignupUserLoadingStateImpl>
    implements _$$SignupUserLoadingStateImplCopyWith<$Res> {
  __$$SignupUserLoadingStateImplCopyWithImpl(
      _$SignupUserLoadingStateImpl _value,
      $Res Function(_$SignupUserLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignupUserLoadingStateImpl implements SignupUserLoadingState {
  const _$SignupUserLoadingStateImpl();

  @override
  String toString() {
    return 'SignupUserState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupUserLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)
        formUpdate,
    required TResult Function() imageLoading,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
    required TResult Function(String message) permissionError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)?
        formUpdate,
    TResult? Function()? imageLoading,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? permissionError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)?
        formUpdate,
    TResult Function()? imageLoading,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? permissionError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupUserInitialState value) initial,
    required TResult Function(SignupUserFormState value) formUpdate,
    required TResult Function(SignupUserImageLoadingState value) imageLoading,
    required TResult Function(SignupUserLoadingState value) loading,
    required TResult Function(SignupUserSuccessState value) success,
    required TResult Function(SignupUserErrorState value) error,
    required TResult Function(SignupUserPermissionErrorState value)
        permissionError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupUserInitialState value)? initial,
    TResult? Function(SignupUserFormState value)? formUpdate,
    TResult? Function(SignupUserImageLoadingState value)? imageLoading,
    TResult? Function(SignupUserLoadingState value)? loading,
    TResult? Function(SignupUserSuccessState value)? success,
    TResult? Function(SignupUserErrorState value)? error,
    TResult? Function(SignupUserPermissionErrorState value)? permissionError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupUserInitialState value)? initial,
    TResult Function(SignupUserFormState value)? formUpdate,
    TResult Function(SignupUserImageLoadingState value)? imageLoading,
    TResult Function(SignupUserLoadingState value)? loading,
    TResult Function(SignupUserSuccessState value)? success,
    TResult Function(SignupUserErrorState value)? error,
    TResult Function(SignupUserPermissionErrorState value)? permissionError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SignupUserLoadingState implements SignupUserState {
  const factory SignupUserLoadingState() = _$SignupUserLoadingStateImpl;
}

/// @nodoc
abstract class _$$SignupUserSuccessStateImplCopyWith<$Res> {
  factory _$$SignupUserSuccessStateImplCopyWith(
          _$SignupUserSuccessStateImpl value,
          $Res Function(_$SignupUserSuccessStateImpl) then) =
      __$$SignupUserSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SignupUserSuccessStateImplCopyWithImpl<$Res>
    extends _$SignupUserStateCopyWithImpl<$Res, _$SignupUserSuccessStateImpl>
    implements _$$SignupUserSuccessStateImplCopyWith<$Res> {
  __$$SignupUserSuccessStateImplCopyWithImpl(
      _$SignupUserSuccessStateImpl _value,
      $Res Function(_$SignupUserSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SignupUserSuccessStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignupUserSuccessStateImpl implements SignupUserSuccessState {
  const _$SignupUserSuccessStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SignupUserState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupUserSuccessStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SignupUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupUserSuccessStateImplCopyWith<_$SignupUserSuccessStateImpl>
      get copyWith => __$$SignupUserSuccessStateImplCopyWithImpl<
          _$SignupUserSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)
        formUpdate,
    required TResult Function() imageLoading,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
    required TResult Function(String message) permissionError,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)?
        formUpdate,
    TResult? Function()? imageLoading,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? permissionError,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)?
        formUpdate,
    TResult Function()? imageLoading,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? permissionError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupUserInitialState value) initial,
    required TResult Function(SignupUserFormState value) formUpdate,
    required TResult Function(SignupUserImageLoadingState value) imageLoading,
    required TResult Function(SignupUserLoadingState value) loading,
    required TResult Function(SignupUserSuccessState value) success,
    required TResult Function(SignupUserErrorState value) error,
    required TResult Function(SignupUserPermissionErrorState value)
        permissionError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupUserInitialState value)? initial,
    TResult? Function(SignupUserFormState value)? formUpdate,
    TResult? Function(SignupUserImageLoadingState value)? imageLoading,
    TResult? Function(SignupUserLoadingState value)? loading,
    TResult? Function(SignupUserSuccessState value)? success,
    TResult? Function(SignupUserErrorState value)? error,
    TResult? Function(SignupUserPermissionErrorState value)? permissionError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupUserInitialState value)? initial,
    TResult Function(SignupUserFormState value)? formUpdate,
    TResult Function(SignupUserImageLoadingState value)? imageLoading,
    TResult Function(SignupUserLoadingState value)? loading,
    TResult Function(SignupUserSuccessState value)? success,
    TResult Function(SignupUserErrorState value)? error,
    TResult Function(SignupUserPermissionErrorState value)? permissionError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SignupUserSuccessState implements SignupUserState {
  const factory SignupUserSuccessState(final String message) =
      _$SignupUserSuccessStateImpl;

  String get message;

  /// Create a copy of SignupUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupUserSuccessStateImplCopyWith<_$SignupUserSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupUserErrorStateImplCopyWith<$Res> {
  factory _$$SignupUserErrorStateImplCopyWith(_$SignupUserErrorStateImpl value,
          $Res Function(_$SignupUserErrorStateImpl) then) =
      __$$SignupUserErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SignupUserErrorStateImplCopyWithImpl<$Res>
    extends _$SignupUserStateCopyWithImpl<$Res, _$SignupUserErrorStateImpl>
    implements _$$SignupUserErrorStateImplCopyWith<$Res> {
  __$$SignupUserErrorStateImplCopyWithImpl(_$SignupUserErrorStateImpl _value,
      $Res Function(_$SignupUserErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SignupUserErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignupUserErrorStateImpl implements SignupUserErrorState {
  const _$SignupUserErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SignupUserState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupUserErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SignupUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupUserErrorStateImplCopyWith<_$SignupUserErrorStateImpl>
      get copyWith =>
          __$$SignupUserErrorStateImplCopyWithImpl<_$SignupUserErrorStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)
        formUpdate,
    required TResult Function() imageLoading,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
    required TResult Function(String message) permissionError,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)?
        formUpdate,
    TResult? Function()? imageLoading,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? permissionError,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)?
        formUpdate,
    TResult Function()? imageLoading,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? permissionError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupUserInitialState value) initial,
    required TResult Function(SignupUserFormState value) formUpdate,
    required TResult Function(SignupUserImageLoadingState value) imageLoading,
    required TResult Function(SignupUserLoadingState value) loading,
    required TResult Function(SignupUserSuccessState value) success,
    required TResult Function(SignupUserErrorState value) error,
    required TResult Function(SignupUserPermissionErrorState value)
        permissionError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupUserInitialState value)? initial,
    TResult? Function(SignupUserFormState value)? formUpdate,
    TResult? Function(SignupUserImageLoadingState value)? imageLoading,
    TResult? Function(SignupUserLoadingState value)? loading,
    TResult? Function(SignupUserSuccessState value)? success,
    TResult? Function(SignupUserErrorState value)? error,
    TResult? Function(SignupUserPermissionErrorState value)? permissionError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupUserInitialState value)? initial,
    TResult Function(SignupUserFormState value)? formUpdate,
    TResult Function(SignupUserImageLoadingState value)? imageLoading,
    TResult Function(SignupUserLoadingState value)? loading,
    TResult Function(SignupUserSuccessState value)? success,
    TResult Function(SignupUserErrorState value)? error,
    TResult Function(SignupUserPermissionErrorState value)? permissionError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignupUserErrorState implements SignupUserState {
  const factory SignupUserErrorState(final String message) =
      _$SignupUserErrorStateImpl;

  String get message;

  /// Create a copy of SignupUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupUserErrorStateImplCopyWith<_$SignupUserErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupUserPermissionErrorStateImplCopyWith<$Res> {
  factory _$$SignupUserPermissionErrorStateImplCopyWith(
          _$SignupUserPermissionErrorStateImpl value,
          $Res Function(_$SignupUserPermissionErrorStateImpl) then) =
      __$$SignupUserPermissionErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SignupUserPermissionErrorStateImplCopyWithImpl<$Res>
    extends _$SignupUserStateCopyWithImpl<$Res,
        _$SignupUserPermissionErrorStateImpl>
    implements _$$SignupUserPermissionErrorStateImplCopyWith<$Res> {
  __$$SignupUserPermissionErrorStateImplCopyWithImpl(
      _$SignupUserPermissionErrorStateImpl _value,
      $Res Function(_$SignupUserPermissionErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SignupUserPermissionErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignupUserPermissionErrorStateImpl
    implements SignupUserPermissionErrorState {
  const _$SignupUserPermissionErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SignupUserState.permissionError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupUserPermissionErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SignupUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupUserPermissionErrorStateImplCopyWith<
          _$SignupUserPermissionErrorStateImpl>
      get copyWith => __$$SignupUserPermissionErrorStateImplCopyWithImpl<
          _$SignupUserPermissionErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)
        formUpdate,
    required TResult Function() imageLoading,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
    required TResult Function(String message) permissionError,
  }) {
    return permissionError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)?
        formUpdate,
    TResult? Function()? imageLoading,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? permissionError,
  }) {
    return permissionError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String? firstName,
            String? lastName,
            String? email,
            String? phoneNumber,
            DateTime? dateOfBirth,
            Gender? gender,
            String? password,
            String? confirmPassword,
            File? profileImage,
            bool? isFormValid)?
        formUpdate,
    TResult Function()? imageLoading,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? permissionError,
    required TResult orElse(),
  }) {
    if (permissionError != null) {
      return permissionError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupUserInitialState value) initial,
    required TResult Function(SignupUserFormState value) formUpdate,
    required TResult Function(SignupUserImageLoadingState value) imageLoading,
    required TResult Function(SignupUserLoadingState value) loading,
    required TResult Function(SignupUserSuccessState value) success,
    required TResult Function(SignupUserErrorState value) error,
    required TResult Function(SignupUserPermissionErrorState value)
        permissionError,
  }) {
    return permissionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupUserInitialState value)? initial,
    TResult? Function(SignupUserFormState value)? formUpdate,
    TResult? Function(SignupUserImageLoadingState value)? imageLoading,
    TResult? Function(SignupUserLoadingState value)? loading,
    TResult? Function(SignupUserSuccessState value)? success,
    TResult? Function(SignupUserErrorState value)? error,
    TResult? Function(SignupUserPermissionErrorState value)? permissionError,
  }) {
    return permissionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupUserInitialState value)? initial,
    TResult Function(SignupUserFormState value)? formUpdate,
    TResult Function(SignupUserImageLoadingState value)? imageLoading,
    TResult Function(SignupUserLoadingState value)? loading,
    TResult Function(SignupUserSuccessState value)? success,
    TResult Function(SignupUserErrorState value)? error,
    TResult Function(SignupUserPermissionErrorState value)? permissionError,
    required TResult orElse(),
  }) {
    if (permissionError != null) {
      return permissionError(this);
    }
    return orElse();
  }
}

abstract class SignupUserPermissionErrorState implements SignupUserState {
  const factory SignupUserPermissionErrorState(final String message) =
      _$SignupUserPermissionErrorStateImpl;

  String get message;

  /// Create a copy of SignupUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupUserPermissionErrorStateImplCopyWith<
          _$SignupUserPermissionErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
