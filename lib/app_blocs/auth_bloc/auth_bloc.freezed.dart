// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authEventInitial,
    required TResult Function() authEventlogin,
    required TResult Function(String email, String password) authEventsignUp,
    required TResult Function() authEventsignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authEventInitial,
    TResult? Function()? authEventlogin,
    TResult? Function(String email, String password)? authEventsignUp,
    TResult? Function()? authEventsignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authEventInitial,
    TResult Function()? authEventlogin,
    TResult Function(String email, String password)? authEventsignUp,
    TResult Function()? authEventsignOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventInitial value) authEventInitial,
    required TResult Function(AuthEventLogin value) authEventlogin,
    required TResult Function(AuthEventSignUp value) authEventsignUp,
    required TResult Function(AuthEventSignOut value) authEventsignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventInitial value)? authEventInitial,
    TResult? Function(AuthEventLogin value)? authEventlogin,
    TResult? Function(AuthEventSignUp value)? authEventsignUp,
    TResult? Function(AuthEventSignOut value)? authEventsignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventInitial value)? authEventInitial,
    TResult Function(AuthEventLogin value)? authEventlogin,
    TResult Function(AuthEventSignUp value)? authEventsignUp,
    TResult Function(AuthEventSignOut value)? authEventsignOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthEventInitialImplCopyWith<$Res> {
  factory _$$AuthEventInitialImplCopyWith(_$AuthEventInitialImpl value,
          $Res Function(_$AuthEventInitialImpl) then) =
      __$$AuthEventInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventInitialImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventInitialImpl>
    implements _$$AuthEventInitialImplCopyWith<$Res> {
  __$$AuthEventInitialImplCopyWithImpl(_$AuthEventInitialImpl _value,
      $Res Function(_$AuthEventInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthEventInitialImpl implements AuthEventInitial {
  const _$AuthEventInitialImpl();

  @override
  String toString() {
    return 'AuthEvent.authEventInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthEventInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authEventInitial,
    required TResult Function() authEventlogin,
    required TResult Function(String email, String password) authEventsignUp,
    required TResult Function() authEventsignOut,
  }) {
    return authEventInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authEventInitial,
    TResult? Function()? authEventlogin,
    TResult? Function(String email, String password)? authEventsignUp,
    TResult? Function()? authEventsignOut,
  }) {
    return authEventInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authEventInitial,
    TResult Function()? authEventlogin,
    TResult Function(String email, String password)? authEventsignUp,
    TResult Function()? authEventsignOut,
    required TResult orElse(),
  }) {
    if (authEventInitial != null) {
      return authEventInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventInitial value) authEventInitial,
    required TResult Function(AuthEventLogin value) authEventlogin,
    required TResult Function(AuthEventSignUp value) authEventsignUp,
    required TResult Function(AuthEventSignOut value) authEventsignOut,
  }) {
    return authEventInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventInitial value)? authEventInitial,
    TResult? Function(AuthEventLogin value)? authEventlogin,
    TResult? Function(AuthEventSignUp value)? authEventsignUp,
    TResult? Function(AuthEventSignOut value)? authEventsignOut,
  }) {
    return authEventInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventInitial value)? authEventInitial,
    TResult Function(AuthEventLogin value)? authEventlogin,
    TResult Function(AuthEventSignUp value)? authEventsignUp,
    TResult Function(AuthEventSignOut value)? authEventsignOut,
    required TResult orElse(),
  }) {
    if (authEventInitial != null) {
      return authEventInitial(this);
    }
    return orElse();
  }
}

abstract class AuthEventInitial implements AuthEvent {
  const factory AuthEventInitial() = _$AuthEventInitialImpl;
}

/// @nodoc
abstract class _$$AuthEventLoginImplCopyWith<$Res> {
  factory _$$AuthEventLoginImplCopyWith(_$AuthEventLoginImpl value,
          $Res Function(_$AuthEventLoginImpl) then) =
      __$$AuthEventLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventLoginImpl>
    implements _$$AuthEventLoginImplCopyWith<$Res> {
  __$$AuthEventLoginImplCopyWithImpl(
      _$AuthEventLoginImpl _value, $Res Function(_$AuthEventLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthEventLoginImpl implements AuthEventLogin {
  const _$AuthEventLoginImpl();

  @override
  String toString() {
    return 'AuthEvent.authEventlogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthEventLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authEventInitial,
    required TResult Function() authEventlogin,
    required TResult Function(String email, String password) authEventsignUp,
    required TResult Function() authEventsignOut,
  }) {
    return authEventlogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authEventInitial,
    TResult? Function()? authEventlogin,
    TResult? Function(String email, String password)? authEventsignUp,
    TResult? Function()? authEventsignOut,
  }) {
    return authEventlogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authEventInitial,
    TResult Function()? authEventlogin,
    TResult Function(String email, String password)? authEventsignUp,
    TResult Function()? authEventsignOut,
    required TResult orElse(),
  }) {
    if (authEventlogin != null) {
      return authEventlogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventInitial value) authEventInitial,
    required TResult Function(AuthEventLogin value) authEventlogin,
    required TResult Function(AuthEventSignUp value) authEventsignUp,
    required TResult Function(AuthEventSignOut value) authEventsignOut,
  }) {
    return authEventlogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventInitial value)? authEventInitial,
    TResult? Function(AuthEventLogin value)? authEventlogin,
    TResult? Function(AuthEventSignUp value)? authEventsignUp,
    TResult? Function(AuthEventSignOut value)? authEventsignOut,
  }) {
    return authEventlogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventInitial value)? authEventInitial,
    TResult Function(AuthEventLogin value)? authEventlogin,
    TResult Function(AuthEventSignUp value)? authEventsignUp,
    TResult Function(AuthEventSignOut value)? authEventsignOut,
    required TResult orElse(),
  }) {
    if (authEventlogin != null) {
      return authEventlogin(this);
    }
    return orElse();
  }
}

abstract class AuthEventLogin implements AuthEvent {
  const factory AuthEventLogin() = _$AuthEventLoginImpl;
}

/// @nodoc
abstract class _$$AuthEventSignUpImplCopyWith<$Res> {
  factory _$$AuthEventSignUpImplCopyWith(_$AuthEventSignUpImpl value,
          $Res Function(_$AuthEventSignUpImpl) then) =
      __$$AuthEventSignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthEventSignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventSignUpImpl>
    implements _$$AuthEventSignUpImplCopyWith<$Res> {
  __$$AuthEventSignUpImplCopyWithImpl(
      _$AuthEventSignUpImpl _value, $Res Function(_$AuthEventSignUpImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthEventSignUpImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthEventSignUpImpl implements AuthEventSignUp {
  const _$AuthEventSignUpImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.authEventsignUp(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventSignUpImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventSignUpImplCopyWith<_$AuthEventSignUpImpl> get copyWith =>
      __$$AuthEventSignUpImplCopyWithImpl<_$AuthEventSignUpImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authEventInitial,
    required TResult Function() authEventlogin,
    required TResult Function(String email, String password) authEventsignUp,
    required TResult Function() authEventsignOut,
  }) {
    return authEventsignUp(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authEventInitial,
    TResult? Function()? authEventlogin,
    TResult? Function(String email, String password)? authEventsignUp,
    TResult? Function()? authEventsignOut,
  }) {
    return authEventsignUp?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authEventInitial,
    TResult Function()? authEventlogin,
    TResult Function(String email, String password)? authEventsignUp,
    TResult Function()? authEventsignOut,
    required TResult orElse(),
  }) {
    if (authEventsignUp != null) {
      return authEventsignUp(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventInitial value) authEventInitial,
    required TResult Function(AuthEventLogin value) authEventlogin,
    required TResult Function(AuthEventSignUp value) authEventsignUp,
    required TResult Function(AuthEventSignOut value) authEventsignOut,
  }) {
    return authEventsignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventInitial value)? authEventInitial,
    TResult? Function(AuthEventLogin value)? authEventlogin,
    TResult? Function(AuthEventSignUp value)? authEventsignUp,
    TResult? Function(AuthEventSignOut value)? authEventsignOut,
  }) {
    return authEventsignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventInitial value)? authEventInitial,
    TResult Function(AuthEventLogin value)? authEventlogin,
    TResult Function(AuthEventSignUp value)? authEventsignUp,
    TResult Function(AuthEventSignOut value)? authEventsignOut,
    required TResult orElse(),
  }) {
    if (authEventsignUp != null) {
      return authEventsignUp(this);
    }
    return orElse();
  }
}

abstract class AuthEventSignUp implements AuthEvent {
  const factory AuthEventSignUp(
      {required final String email,
      required final String password}) = _$AuthEventSignUpImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthEventSignUpImplCopyWith<_$AuthEventSignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEventSignOutImplCopyWith<$Res> {
  factory _$$AuthEventSignOutImplCopyWith(_$AuthEventSignOutImpl value,
          $Res Function(_$AuthEventSignOutImpl) then) =
      __$$AuthEventSignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventSignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventSignOutImpl>
    implements _$$AuthEventSignOutImplCopyWith<$Res> {
  __$$AuthEventSignOutImplCopyWithImpl(_$AuthEventSignOutImpl _value,
      $Res Function(_$AuthEventSignOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthEventSignOutImpl implements AuthEventSignOut {
  const _$AuthEventSignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.authEventsignOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthEventSignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authEventInitial,
    required TResult Function() authEventlogin,
    required TResult Function(String email, String password) authEventsignUp,
    required TResult Function() authEventsignOut,
  }) {
    return authEventsignOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authEventInitial,
    TResult? Function()? authEventlogin,
    TResult? Function(String email, String password)? authEventsignUp,
    TResult? Function()? authEventsignOut,
  }) {
    return authEventsignOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authEventInitial,
    TResult Function()? authEventlogin,
    TResult Function(String email, String password)? authEventsignUp,
    TResult Function()? authEventsignOut,
    required TResult orElse(),
  }) {
    if (authEventsignOut != null) {
      return authEventsignOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventInitial value) authEventInitial,
    required TResult Function(AuthEventLogin value) authEventlogin,
    required TResult Function(AuthEventSignUp value) authEventsignUp,
    required TResult Function(AuthEventSignOut value) authEventsignOut,
  }) {
    return authEventsignOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventInitial value)? authEventInitial,
    TResult? Function(AuthEventLogin value)? authEventlogin,
    TResult? Function(AuthEventSignUp value)? authEventsignUp,
    TResult? Function(AuthEventSignOut value)? authEventsignOut,
  }) {
    return authEventsignOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventInitial value)? authEventInitial,
    TResult Function(AuthEventLogin value)? authEventlogin,
    TResult Function(AuthEventSignUp value)? authEventsignUp,
    TResult Function(AuthEventSignOut value)? authEventsignOut,
    required TResult orElse(),
  }) {
    if (authEventsignOut != null) {
      return authEventsignOut(this);
    }
    return orElse();
  }
}

abstract class AuthEventSignOut implements AuthEvent {
  const factory AuthEventSignOut() = _$AuthEventSignOutImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() loading,
    required TResult Function(UserCredential userCredential) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? loading,
    TResult? Function(UserCredential userCredential)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? loading,
    TResult Function(UserCredential userCredential)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartImplCopyWith<$Res> {
  factory _$$StartImplCopyWith(
          _$StartImpl value, $Res Function(_$StartImpl) then) =
      __$$StartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$StartImpl>
    implements _$$StartImplCopyWith<$Res> {
  __$$StartImplCopyWithImpl(
      _$StartImpl _value, $Res Function(_$StartImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartImpl implements _Start {
  const _$StartImpl();

  @override
  String toString() {
    return 'AuthState.start()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() loading,
    required TResult Function(UserCredential userCredential) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) error,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? loading,
    TResult? Function(UserCredential userCredential)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? error,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? loading,
    TResult Function(UserCredential userCredential)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Error value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Error value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements AuthState {
  const factory _Start() = _$StartImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() loading,
    required TResult Function(UserCredential userCredential) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? loading,
    TResult? Function(UserCredential userCredential)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? loading,
    TResult Function(UserCredential userCredential)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? error,
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
    required TResult Function(_Start value) start,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserCredential userCredential});
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCredential = null,
  }) {
    return _then(_$AuthenticatedImpl(
      null == userCredential
          ? _value.userCredential
          : userCredential // ignore: cast_nullable_to_non_nullable
              as UserCredential,
    ));
  }
}

/// @nodoc

class _$AuthenticatedImpl implements _Authenticated {
  const _$AuthenticatedImpl(this.userCredential);

  @override
  final UserCredential userCredential;

  @override
  String toString() {
    return 'AuthState.authenticated(userCredential: $userCredential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedImpl &&
            (identical(other.userCredential, userCredential) ||
                other.userCredential == userCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userCredential);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      __$$AuthenticatedImplCopyWithImpl<_$AuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() loading,
    required TResult Function(UserCredential userCredential) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) error,
  }) {
    return authenticated(userCredential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? loading,
    TResult? Function(UserCredential userCredential)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? error,
  }) {
    return authenticated?.call(userCredential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? loading,
    TResult Function(UserCredential userCredential)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(userCredential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Error value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Error value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated(final UserCredential userCredential) =
      _$AuthenticatedImpl;

  UserCredential get userCredential;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthenticatedImpl implements _Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() loading,
    required TResult Function(UserCredential userCredential) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) error,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? loading,
    TResult? Function(UserCredential userCredential)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? error,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? loading,
    TResult Function(UserCredential userCredential)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Error value) error,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Error value)? error,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$UnauthenticatedImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() loading,
    required TResult Function(UserCredential userCredential) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? loading,
    TResult? Function(UserCredential userCredential)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? loading,
    TResult Function(UserCredential userCredential)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? error,
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
    required TResult Function(_Start value) start,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
