// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  AuthEventLoginStarted loginStarted() {
    return const AuthEventLoginStarted();
  }

  AuthEventLogoutStarted logoutStarted() {
    return const AuthEventLogoutStarted();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginStarted,
    required TResult Function() logoutStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginStarted,
    TResult Function()? logoutStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginStarted,
    TResult Function()? logoutStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginStarted value) loginStarted,
    required TResult Function(AuthEventLogoutStarted value) logoutStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLogoutStarted value)? logoutStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLogoutStarted value)? logoutStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $AuthEventLoginStartedCopyWith<$Res> {
  factory $AuthEventLoginStartedCopyWith(AuthEventLoginStarted value,
          $Res Function(AuthEventLoginStarted) then) =
      _$AuthEventLoginStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventLoginStartedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoginStartedCopyWith<$Res> {
  _$AuthEventLoginStartedCopyWithImpl(
      AuthEventLoginStarted _value, $Res Function(AuthEventLoginStarted) _then)
      : super(_value, (v) => _then(v as AuthEventLoginStarted));

  @override
  AuthEventLoginStarted get _value => super._value as AuthEventLoginStarted;
}

/// @nodoc

class _$AuthEventLoginStarted implements AuthEventLoginStarted {
  const _$AuthEventLoginStarted();

  @override
  String toString() {
    return 'AuthEvent.loginStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthEventLoginStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginStarted,
    required TResult Function() logoutStarted,
  }) {
    return loginStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginStarted,
    TResult Function()? logoutStarted,
  }) {
    return loginStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginStarted,
    TResult Function()? logoutStarted,
    required TResult orElse(),
  }) {
    if (loginStarted != null) {
      return loginStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginStarted value) loginStarted,
    required TResult Function(AuthEventLogoutStarted value) logoutStarted,
  }) {
    return loginStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLogoutStarted value)? logoutStarted,
  }) {
    return loginStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLogoutStarted value)? logoutStarted,
    required TResult orElse(),
  }) {
    if (loginStarted != null) {
      return loginStarted(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoginStarted implements AuthEvent {
  const factory AuthEventLoginStarted() = _$AuthEventLoginStarted;
}

/// @nodoc
abstract class $AuthEventLogoutStartedCopyWith<$Res> {
  factory $AuthEventLogoutStartedCopyWith(AuthEventLogoutStarted value,
          $Res Function(AuthEventLogoutStarted) then) =
      _$AuthEventLogoutStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventLogoutStartedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLogoutStartedCopyWith<$Res> {
  _$AuthEventLogoutStartedCopyWithImpl(AuthEventLogoutStarted _value,
      $Res Function(AuthEventLogoutStarted) _then)
      : super(_value, (v) => _then(v as AuthEventLogoutStarted));

  @override
  AuthEventLogoutStarted get _value => super._value as AuthEventLogoutStarted;
}

/// @nodoc

class _$AuthEventLogoutStarted implements AuthEventLogoutStarted {
  const _$AuthEventLogoutStarted();

  @override
  String toString() {
    return 'AuthEvent.logoutStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthEventLogoutStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginStarted,
    required TResult Function() logoutStarted,
  }) {
    return logoutStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginStarted,
    TResult Function()? logoutStarted,
  }) {
    return logoutStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginStarted,
    TResult Function()? logoutStarted,
    required TResult orElse(),
  }) {
    if (logoutStarted != null) {
      return logoutStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginStarted value) loginStarted,
    required TResult Function(AuthEventLogoutStarted value) logoutStarted,
  }) {
    return logoutStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLogoutStarted value)? logoutStarted,
  }) {
    return logoutStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLogoutStarted value)? logoutStarted,
    required TResult orElse(),
  }) {
    if (logoutStarted != null) {
      return logoutStarted(this);
    }
    return orElse();
  }
}

abstract class AuthEventLogoutStarted implements AuthEvent {
  const factory AuthEventLogoutStarted() = _$AuthEventLogoutStarted;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthStateNotAuthorized notAuthorized() {
    return const AuthStateNotAuthorized();
  }

  AuthstateLoginInProgress loginInProgress() {
    return const AuthstateLoginInProgress();
  }

  AuthStateLoginSuccess loginSuccess() {
    return const AuthStateLoginSuccess();
  }

  AuthStateLoginFailure loginFailure() {
    return const AuthStateLoginFailure();
  }

  AuthStateLogoutInProgress logoutInProgress() {
    return const AuthStateLogoutInProgress();
  }

  AuthStateLogoutSuccess logoutSuccess() {
    return const AuthStateLogoutSuccess();
  }

  AuthStateLogoutFailure logoutFailure() {
    return const AuthStateLogoutFailure();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() loginInProgress,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function() logoutSuccess,
    required TResult Function() logoutFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function()? logoutFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function()? logoutFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthstateLoginInProgress value) loginInProgress,
    required TResult Function(AuthStateLoginSuccess value) loginSuccess,
    required TResult Function(AuthStateLoginFailure value) loginFailure,
    required TResult Function(AuthStateLogoutInProgress value) logoutInProgress,
    required TResult Function(AuthStateLogoutSuccess value) logoutSuccess,
    required TResult Function(AuthStateLogoutFailure value) logoutFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutSuccess value)? logoutSuccess,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutSuccess value)? logoutSuccess,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthStateNotAuthorizedCopyWith<$Res> {
  factory $AuthStateNotAuthorizedCopyWith(AuthStateNotAuthorized value,
          $Res Function(AuthStateNotAuthorized) then) =
      _$AuthStateNotAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateNotAuthorizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateNotAuthorizedCopyWith<$Res> {
  _$AuthStateNotAuthorizedCopyWithImpl(AuthStateNotAuthorized _value,
      $Res Function(AuthStateNotAuthorized) _then)
      : super(_value, (v) => _then(v as AuthStateNotAuthorized));

  @override
  AuthStateNotAuthorized get _value => super._value as AuthStateNotAuthorized;
}

/// @nodoc

class _$AuthStateNotAuthorized implements AuthStateNotAuthorized {
  const _$AuthStateNotAuthorized();

  @override
  String toString() {
    return 'AuthState.notAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateNotAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() loginInProgress,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function() logoutSuccess,
    required TResult Function() logoutFailure,
  }) {
    return notAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function()? logoutFailure,
  }) {
    return notAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function()? logoutFailure,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthstateLoginInProgress value) loginInProgress,
    required TResult Function(AuthStateLoginSuccess value) loginSuccess,
    required TResult Function(AuthStateLoginFailure value) loginFailure,
    required TResult Function(AuthStateLogoutInProgress value) logoutInProgress,
    required TResult Function(AuthStateLogoutSuccess value) logoutSuccess,
    required TResult Function(AuthStateLogoutFailure value) logoutFailure,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutSuccess value)? logoutSuccess,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutSuccess value)? logoutSuccess,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }
}

abstract class AuthStateNotAuthorized implements AuthState {
  const factory AuthStateNotAuthorized() = _$AuthStateNotAuthorized;
}

/// @nodoc
abstract class $AuthstateLoginInProgressCopyWith<$Res> {
  factory $AuthstateLoginInProgressCopyWith(AuthstateLoginInProgress value,
          $Res Function(AuthstateLoginInProgress) then) =
      _$AuthstateLoginInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthstateLoginInProgressCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthstateLoginInProgressCopyWith<$Res> {
  _$AuthstateLoginInProgressCopyWithImpl(AuthstateLoginInProgress _value,
      $Res Function(AuthstateLoginInProgress) _then)
      : super(_value, (v) => _then(v as AuthstateLoginInProgress));

  @override
  AuthstateLoginInProgress get _value =>
      super._value as AuthstateLoginInProgress;
}

/// @nodoc

class _$AuthstateLoginInProgress implements AuthstateLoginInProgress {
  const _$AuthstateLoginInProgress();

  @override
  String toString() {
    return 'AuthState.loginInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthstateLoginInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() loginInProgress,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function() logoutSuccess,
    required TResult Function() logoutFailure,
  }) {
    return loginInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function()? logoutFailure,
  }) {
    return loginInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function()? logoutFailure,
    required TResult orElse(),
  }) {
    if (loginInProgress != null) {
      return loginInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthstateLoginInProgress value) loginInProgress,
    required TResult Function(AuthStateLoginSuccess value) loginSuccess,
    required TResult Function(AuthStateLoginFailure value) loginFailure,
    required TResult Function(AuthStateLogoutInProgress value) logoutInProgress,
    required TResult Function(AuthStateLogoutSuccess value) logoutSuccess,
    required TResult Function(AuthStateLogoutFailure value) logoutFailure,
  }) {
    return loginInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutSuccess value)? logoutSuccess,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
  }) {
    return loginInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutSuccess value)? logoutSuccess,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
    required TResult orElse(),
  }) {
    if (loginInProgress != null) {
      return loginInProgress(this);
    }
    return orElse();
  }
}

abstract class AuthstateLoginInProgress implements AuthState {
  const factory AuthstateLoginInProgress() = _$AuthstateLoginInProgress;
}

/// @nodoc
abstract class $AuthStateLoginSuccessCopyWith<$Res> {
  factory $AuthStateLoginSuccessCopyWith(AuthStateLoginSuccess value,
          $Res Function(AuthStateLoginSuccess) then) =
      _$AuthStateLoginSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateLoginSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateLoginSuccessCopyWith<$Res> {
  _$AuthStateLoginSuccessCopyWithImpl(
      AuthStateLoginSuccess _value, $Res Function(AuthStateLoginSuccess) _then)
      : super(_value, (v) => _then(v as AuthStateLoginSuccess));

  @override
  AuthStateLoginSuccess get _value => super._value as AuthStateLoginSuccess;
}

/// @nodoc

class _$AuthStateLoginSuccess implements AuthStateLoginSuccess {
  const _$AuthStateLoginSuccess();

  @override
  String toString() {
    return 'AuthState.loginSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateLoginSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() loginInProgress,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function() logoutSuccess,
    required TResult Function() logoutFailure,
  }) {
    return loginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function()? logoutFailure,
  }) {
    return loginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function()? logoutFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthstateLoginInProgress value) loginInProgress,
    required TResult Function(AuthStateLoginSuccess value) loginSuccess,
    required TResult Function(AuthStateLoginFailure value) loginFailure,
    required TResult Function(AuthStateLogoutInProgress value) logoutInProgress,
    required TResult Function(AuthStateLogoutSuccess value) logoutSuccess,
    required TResult Function(AuthStateLogoutFailure value) logoutFailure,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutSuccess value)? logoutSuccess,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutSuccess value)? logoutSuccess,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoginSuccess implements AuthState {
  const factory AuthStateLoginSuccess() = _$AuthStateLoginSuccess;
}

/// @nodoc
abstract class $AuthStateLoginFailureCopyWith<$Res> {
  factory $AuthStateLoginFailureCopyWith(AuthStateLoginFailure value,
          $Res Function(AuthStateLoginFailure) then) =
      _$AuthStateLoginFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateLoginFailureCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateLoginFailureCopyWith<$Res> {
  _$AuthStateLoginFailureCopyWithImpl(
      AuthStateLoginFailure _value, $Res Function(AuthStateLoginFailure) _then)
      : super(_value, (v) => _then(v as AuthStateLoginFailure));

  @override
  AuthStateLoginFailure get _value => super._value as AuthStateLoginFailure;
}

/// @nodoc

class _$AuthStateLoginFailure implements AuthStateLoginFailure {
  const _$AuthStateLoginFailure();

  @override
  String toString() {
    return 'AuthState.loginFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateLoginFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() loginInProgress,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function() logoutSuccess,
    required TResult Function() logoutFailure,
  }) {
    return loginFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function()? logoutFailure,
  }) {
    return loginFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function()? logoutFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthstateLoginInProgress value) loginInProgress,
    required TResult Function(AuthStateLoginSuccess value) loginSuccess,
    required TResult Function(AuthStateLoginFailure value) loginFailure,
    required TResult Function(AuthStateLogoutInProgress value) logoutInProgress,
    required TResult Function(AuthStateLogoutSuccess value) logoutSuccess,
    required TResult Function(AuthStateLogoutFailure value) logoutFailure,
  }) {
    return loginFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutSuccess value)? logoutSuccess,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
  }) {
    return loginFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutSuccess value)? logoutSuccess,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoginFailure implements AuthState {
  const factory AuthStateLoginFailure() = _$AuthStateLoginFailure;
}

/// @nodoc
abstract class $AuthStateLogoutInProgressCopyWith<$Res> {
  factory $AuthStateLogoutInProgressCopyWith(AuthStateLogoutInProgress value,
          $Res Function(AuthStateLogoutInProgress) then) =
      _$AuthStateLogoutInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateLogoutInProgressCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateLogoutInProgressCopyWith<$Res> {
  _$AuthStateLogoutInProgressCopyWithImpl(AuthStateLogoutInProgress _value,
      $Res Function(AuthStateLogoutInProgress) _then)
      : super(_value, (v) => _then(v as AuthStateLogoutInProgress));

  @override
  AuthStateLogoutInProgress get _value =>
      super._value as AuthStateLogoutInProgress;
}

/// @nodoc

class _$AuthStateLogoutInProgress implements AuthStateLogoutInProgress {
  const _$AuthStateLogoutInProgress();

  @override
  String toString() {
    return 'AuthState.logoutInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateLogoutInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() loginInProgress,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function() logoutSuccess,
    required TResult Function() logoutFailure,
  }) {
    return logoutInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function()? logoutFailure,
  }) {
    return logoutInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function()? logoutFailure,
    required TResult orElse(),
  }) {
    if (logoutInProgress != null) {
      return logoutInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthstateLoginInProgress value) loginInProgress,
    required TResult Function(AuthStateLoginSuccess value) loginSuccess,
    required TResult Function(AuthStateLoginFailure value) loginFailure,
    required TResult Function(AuthStateLogoutInProgress value) logoutInProgress,
    required TResult Function(AuthStateLogoutSuccess value) logoutSuccess,
    required TResult Function(AuthStateLogoutFailure value) logoutFailure,
  }) {
    return logoutInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutSuccess value)? logoutSuccess,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
  }) {
    return logoutInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutSuccess value)? logoutSuccess,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
    required TResult orElse(),
  }) {
    if (logoutInProgress != null) {
      return logoutInProgress(this);
    }
    return orElse();
  }
}

abstract class AuthStateLogoutInProgress implements AuthState {
  const factory AuthStateLogoutInProgress() = _$AuthStateLogoutInProgress;
}

/// @nodoc
abstract class $AuthStateLogoutSuccessCopyWith<$Res> {
  factory $AuthStateLogoutSuccessCopyWith(AuthStateLogoutSuccess value,
          $Res Function(AuthStateLogoutSuccess) then) =
      _$AuthStateLogoutSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateLogoutSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateLogoutSuccessCopyWith<$Res> {
  _$AuthStateLogoutSuccessCopyWithImpl(AuthStateLogoutSuccess _value,
      $Res Function(AuthStateLogoutSuccess) _then)
      : super(_value, (v) => _then(v as AuthStateLogoutSuccess));

  @override
  AuthStateLogoutSuccess get _value => super._value as AuthStateLogoutSuccess;
}

/// @nodoc

class _$AuthStateLogoutSuccess implements AuthStateLogoutSuccess {
  const _$AuthStateLogoutSuccess();

  @override
  String toString() {
    return 'AuthState.logoutSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateLogoutSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() loginInProgress,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function() logoutSuccess,
    required TResult Function() logoutFailure,
  }) {
    return logoutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function()? logoutFailure,
  }) {
    return logoutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function()? logoutFailure,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthstateLoginInProgress value) loginInProgress,
    required TResult Function(AuthStateLoginSuccess value) loginSuccess,
    required TResult Function(AuthStateLoginFailure value) loginFailure,
    required TResult Function(AuthStateLogoutInProgress value) logoutInProgress,
    required TResult Function(AuthStateLogoutSuccess value) logoutSuccess,
    required TResult Function(AuthStateLogoutFailure value) logoutFailure,
  }) {
    return logoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutSuccess value)? logoutSuccess,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
  }) {
    return logoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutSuccess value)? logoutSuccess,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthStateLogoutSuccess implements AuthState {
  const factory AuthStateLogoutSuccess() = _$AuthStateLogoutSuccess;
}

/// @nodoc
abstract class $AuthStateLogoutFailureCopyWith<$Res> {
  factory $AuthStateLogoutFailureCopyWith(AuthStateLogoutFailure value,
          $Res Function(AuthStateLogoutFailure) then) =
      _$AuthStateLogoutFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateLogoutFailureCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateLogoutFailureCopyWith<$Res> {
  _$AuthStateLogoutFailureCopyWithImpl(AuthStateLogoutFailure _value,
      $Res Function(AuthStateLogoutFailure) _then)
      : super(_value, (v) => _then(v as AuthStateLogoutFailure));

  @override
  AuthStateLogoutFailure get _value => super._value as AuthStateLogoutFailure;
}

/// @nodoc

class _$AuthStateLogoutFailure implements AuthStateLogoutFailure {
  const _$AuthStateLogoutFailure();

  @override
  String toString() {
    return 'AuthState.logoutFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateLogoutFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() loginInProgress,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function() logoutSuccess,
    required TResult Function() logoutFailure,
  }) {
    return logoutFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function()? logoutFailure,
  }) {
    return logoutFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function()? logoutFailure,
    required TResult orElse(),
  }) {
    if (logoutFailure != null) {
      return logoutFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthstateLoginInProgress value) loginInProgress,
    required TResult Function(AuthStateLoginSuccess value) loginSuccess,
    required TResult Function(AuthStateLoginFailure value) loginFailure,
    required TResult Function(AuthStateLogoutInProgress value) logoutInProgress,
    required TResult Function(AuthStateLogoutSuccess value) logoutSuccess,
    required TResult Function(AuthStateLogoutFailure value) logoutFailure,
  }) {
    return logoutFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutSuccess value)? logoutSuccess,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
  }) {
    return logoutFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutSuccess value)? logoutSuccess,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
    required TResult orElse(),
  }) {
    if (logoutFailure != null) {
      return logoutFailure(this);
    }
    return orElse();
  }
}

abstract class AuthStateLogoutFailure implements AuthState {
  const factory AuthStateLogoutFailure() = _$AuthStateLogoutFailure;
}
