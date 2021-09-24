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

  AuthEventLoginStarted loginStarted(
      {required String username, required String password}) {
    return AuthEventLoginStarted(
      username: username,
      password: password,
    );
  }

  AuthEventLoginSuccessful loginSuccessful() {
    return const AuthEventLoginSuccessful();
  }

  AuthEventLoginFailed loginFailed(SmarteamUserError error) {
    return AuthEventLoginFailed(
      error,
    );
  }

  AuthEventLoginCanceled loginCanceled() {
    return const AuthEventLoginCanceled();
  }

  AuthEventShownCancel shownCancel() {
    return const AuthEventShownCancel();
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
    required TResult Function(String username, String password) loginStarted,
    required TResult Function() loginSuccessful,
    required TResult Function(SmarteamUserError error) loginFailed,
    required TResult Function() loginCanceled,
    required TResult Function() shownCancel,
    required TResult Function() logoutStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? loginStarted,
    TResult Function()? loginSuccessful,
    TResult Function(SmarteamUserError error)? loginFailed,
    TResult Function()? loginCanceled,
    TResult Function()? shownCancel,
    TResult Function()? logoutStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loginStarted,
    TResult Function()? loginSuccessful,
    TResult Function(SmarteamUserError error)? loginFailed,
    TResult Function()? loginCanceled,
    TResult Function()? shownCancel,
    TResult Function()? logoutStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginStarted value) loginStarted,
    required TResult Function(AuthEventLoginSuccessful value) loginSuccessful,
    required TResult Function(AuthEventLoginFailed value) loginFailed,
    required TResult Function(AuthEventLoginCanceled value) loginCanceled,
    required TResult Function(AuthEventShownCancel value) shownCancel,
    required TResult Function(AuthEventLogoutStarted value) logoutStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLoginSuccessful value)? loginSuccessful,
    TResult Function(AuthEventLoginFailed value)? loginFailed,
    TResult Function(AuthEventLoginCanceled value)? loginCanceled,
    TResult Function(AuthEventShownCancel value)? shownCancel,
    TResult Function(AuthEventLogoutStarted value)? logoutStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLoginSuccessful value)? loginSuccessful,
    TResult Function(AuthEventLoginFailed value)? loginFailed,
    TResult Function(AuthEventLoginCanceled value)? loginCanceled,
    TResult Function(AuthEventShownCancel value)? shownCancel,
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
  $Res call({String username, String password});
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

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(AuthEventLoginStarted(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthEventLoginStarted implements AuthEventLoginStarted {
  const _$AuthEventLoginStarted(
      {required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginStarted(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthEventLoginStarted &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $AuthEventLoginStartedCopyWith<AuthEventLoginStarted> get copyWith =>
      _$AuthEventLoginStartedCopyWithImpl<AuthEventLoginStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loginStarted,
    required TResult Function() loginSuccessful,
    required TResult Function(SmarteamUserError error) loginFailed,
    required TResult Function() loginCanceled,
    required TResult Function() shownCancel,
    required TResult Function() logoutStarted,
  }) {
    return loginStarted(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? loginStarted,
    TResult Function()? loginSuccessful,
    TResult Function(SmarteamUserError error)? loginFailed,
    TResult Function()? loginCanceled,
    TResult Function()? shownCancel,
    TResult Function()? logoutStarted,
  }) {
    return loginStarted?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loginStarted,
    TResult Function()? loginSuccessful,
    TResult Function(SmarteamUserError error)? loginFailed,
    TResult Function()? loginCanceled,
    TResult Function()? shownCancel,
    TResult Function()? logoutStarted,
    required TResult orElse(),
  }) {
    if (loginStarted != null) {
      return loginStarted(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginStarted value) loginStarted,
    required TResult Function(AuthEventLoginSuccessful value) loginSuccessful,
    required TResult Function(AuthEventLoginFailed value) loginFailed,
    required TResult Function(AuthEventLoginCanceled value) loginCanceled,
    required TResult Function(AuthEventShownCancel value) shownCancel,
    required TResult Function(AuthEventLogoutStarted value) logoutStarted,
  }) {
    return loginStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLoginSuccessful value)? loginSuccessful,
    TResult Function(AuthEventLoginFailed value)? loginFailed,
    TResult Function(AuthEventLoginCanceled value)? loginCanceled,
    TResult Function(AuthEventShownCancel value)? shownCancel,
    TResult Function(AuthEventLogoutStarted value)? logoutStarted,
  }) {
    return loginStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLoginSuccessful value)? loginSuccessful,
    TResult Function(AuthEventLoginFailed value)? loginFailed,
    TResult Function(AuthEventLoginCanceled value)? loginCanceled,
    TResult Function(AuthEventShownCancel value)? shownCancel,
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
  const factory AuthEventLoginStarted(
      {required String username,
      required String password}) = _$AuthEventLoginStarted;

  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthEventLoginStartedCopyWith<AuthEventLoginStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventLoginSuccessfulCopyWith<$Res> {
  factory $AuthEventLoginSuccessfulCopyWith(AuthEventLoginSuccessful value,
          $Res Function(AuthEventLoginSuccessful) then) =
      _$AuthEventLoginSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventLoginSuccessfulCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoginSuccessfulCopyWith<$Res> {
  _$AuthEventLoginSuccessfulCopyWithImpl(AuthEventLoginSuccessful _value,
      $Res Function(AuthEventLoginSuccessful) _then)
      : super(_value, (v) => _then(v as AuthEventLoginSuccessful));

  @override
  AuthEventLoginSuccessful get _value =>
      super._value as AuthEventLoginSuccessful;
}

/// @nodoc

class _$AuthEventLoginSuccessful implements AuthEventLoginSuccessful {
  const _$AuthEventLoginSuccessful();

  @override
  String toString() {
    return 'AuthEvent.loginSuccessful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthEventLoginSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loginStarted,
    required TResult Function() loginSuccessful,
    required TResult Function(SmarteamUserError error) loginFailed,
    required TResult Function() loginCanceled,
    required TResult Function() shownCancel,
    required TResult Function() logoutStarted,
  }) {
    return loginSuccessful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? loginStarted,
    TResult Function()? loginSuccessful,
    TResult Function(SmarteamUserError error)? loginFailed,
    TResult Function()? loginCanceled,
    TResult Function()? shownCancel,
    TResult Function()? logoutStarted,
  }) {
    return loginSuccessful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loginStarted,
    TResult Function()? loginSuccessful,
    TResult Function(SmarteamUserError error)? loginFailed,
    TResult Function()? loginCanceled,
    TResult Function()? shownCancel,
    TResult Function()? logoutStarted,
    required TResult orElse(),
  }) {
    if (loginSuccessful != null) {
      return loginSuccessful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginStarted value) loginStarted,
    required TResult Function(AuthEventLoginSuccessful value) loginSuccessful,
    required TResult Function(AuthEventLoginFailed value) loginFailed,
    required TResult Function(AuthEventLoginCanceled value) loginCanceled,
    required TResult Function(AuthEventShownCancel value) shownCancel,
    required TResult Function(AuthEventLogoutStarted value) logoutStarted,
  }) {
    return loginSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLoginSuccessful value)? loginSuccessful,
    TResult Function(AuthEventLoginFailed value)? loginFailed,
    TResult Function(AuthEventLoginCanceled value)? loginCanceled,
    TResult Function(AuthEventShownCancel value)? shownCancel,
    TResult Function(AuthEventLogoutStarted value)? logoutStarted,
  }) {
    return loginSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLoginSuccessful value)? loginSuccessful,
    TResult Function(AuthEventLoginFailed value)? loginFailed,
    TResult Function(AuthEventLoginCanceled value)? loginCanceled,
    TResult Function(AuthEventShownCancel value)? shownCancel,
    TResult Function(AuthEventLogoutStarted value)? logoutStarted,
    required TResult orElse(),
  }) {
    if (loginSuccessful != null) {
      return loginSuccessful(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoginSuccessful implements AuthEvent {
  const factory AuthEventLoginSuccessful() = _$AuthEventLoginSuccessful;
}

/// @nodoc
abstract class $AuthEventLoginFailedCopyWith<$Res> {
  factory $AuthEventLoginFailedCopyWith(AuthEventLoginFailed value,
          $Res Function(AuthEventLoginFailed) then) =
      _$AuthEventLoginFailedCopyWithImpl<$Res>;
  $Res call({SmarteamUserError error});

  $SmarteamUserErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$AuthEventLoginFailedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoginFailedCopyWith<$Res> {
  _$AuthEventLoginFailedCopyWithImpl(
      AuthEventLoginFailed _value, $Res Function(AuthEventLoginFailed) _then)
      : super(_value, (v) => _then(v as AuthEventLoginFailed));

  @override
  AuthEventLoginFailed get _value => super._value as AuthEventLoginFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(AuthEventLoginFailed(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SmarteamUserError,
    ));
  }

  @override
  $SmarteamUserErrorCopyWith<$Res> get error {
    return $SmarteamUserErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$AuthEventLoginFailed implements AuthEventLoginFailed {
  const _$AuthEventLoginFailed(this.error);

  @override
  final SmarteamUserError error;

  @override
  String toString() {
    return 'AuthEvent.loginFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthEventLoginFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $AuthEventLoginFailedCopyWith<AuthEventLoginFailed> get copyWith =>
      _$AuthEventLoginFailedCopyWithImpl<AuthEventLoginFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loginStarted,
    required TResult Function() loginSuccessful,
    required TResult Function(SmarteamUserError error) loginFailed,
    required TResult Function() loginCanceled,
    required TResult Function() shownCancel,
    required TResult Function() logoutStarted,
  }) {
    return loginFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? loginStarted,
    TResult Function()? loginSuccessful,
    TResult Function(SmarteamUserError error)? loginFailed,
    TResult Function()? loginCanceled,
    TResult Function()? shownCancel,
    TResult Function()? logoutStarted,
  }) {
    return loginFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loginStarted,
    TResult Function()? loginSuccessful,
    TResult Function(SmarteamUserError error)? loginFailed,
    TResult Function()? loginCanceled,
    TResult Function()? shownCancel,
    TResult Function()? logoutStarted,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginStarted value) loginStarted,
    required TResult Function(AuthEventLoginSuccessful value) loginSuccessful,
    required TResult Function(AuthEventLoginFailed value) loginFailed,
    required TResult Function(AuthEventLoginCanceled value) loginCanceled,
    required TResult Function(AuthEventShownCancel value) shownCancel,
    required TResult Function(AuthEventLogoutStarted value) logoutStarted,
  }) {
    return loginFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLoginSuccessful value)? loginSuccessful,
    TResult Function(AuthEventLoginFailed value)? loginFailed,
    TResult Function(AuthEventLoginCanceled value)? loginCanceled,
    TResult Function(AuthEventShownCancel value)? shownCancel,
    TResult Function(AuthEventLogoutStarted value)? logoutStarted,
  }) {
    return loginFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLoginSuccessful value)? loginSuccessful,
    TResult Function(AuthEventLoginFailed value)? loginFailed,
    TResult Function(AuthEventLoginCanceled value)? loginCanceled,
    TResult Function(AuthEventShownCancel value)? shownCancel,
    TResult Function(AuthEventLogoutStarted value)? logoutStarted,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoginFailed implements AuthEvent {
  const factory AuthEventLoginFailed(SmarteamUserError error) =
      _$AuthEventLoginFailed;

  SmarteamUserError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthEventLoginFailedCopyWith<AuthEventLoginFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventLoginCanceledCopyWith<$Res> {
  factory $AuthEventLoginCanceledCopyWith(AuthEventLoginCanceled value,
          $Res Function(AuthEventLoginCanceled) then) =
      _$AuthEventLoginCanceledCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventLoginCanceledCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoginCanceledCopyWith<$Res> {
  _$AuthEventLoginCanceledCopyWithImpl(AuthEventLoginCanceled _value,
      $Res Function(AuthEventLoginCanceled) _then)
      : super(_value, (v) => _then(v as AuthEventLoginCanceled));

  @override
  AuthEventLoginCanceled get _value => super._value as AuthEventLoginCanceled;
}

/// @nodoc

class _$AuthEventLoginCanceled implements AuthEventLoginCanceled {
  const _$AuthEventLoginCanceled();

  @override
  String toString() {
    return 'AuthEvent.loginCanceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthEventLoginCanceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loginStarted,
    required TResult Function() loginSuccessful,
    required TResult Function(SmarteamUserError error) loginFailed,
    required TResult Function() loginCanceled,
    required TResult Function() shownCancel,
    required TResult Function() logoutStarted,
  }) {
    return loginCanceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? loginStarted,
    TResult Function()? loginSuccessful,
    TResult Function(SmarteamUserError error)? loginFailed,
    TResult Function()? loginCanceled,
    TResult Function()? shownCancel,
    TResult Function()? logoutStarted,
  }) {
    return loginCanceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loginStarted,
    TResult Function()? loginSuccessful,
    TResult Function(SmarteamUserError error)? loginFailed,
    TResult Function()? loginCanceled,
    TResult Function()? shownCancel,
    TResult Function()? logoutStarted,
    required TResult orElse(),
  }) {
    if (loginCanceled != null) {
      return loginCanceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginStarted value) loginStarted,
    required TResult Function(AuthEventLoginSuccessful value) loginSuccessful,
    required TResult Function(AuthEventLoginFailed value) loginFailed,
    required TResult Function(AuthEventLoginCanceled value) loginCanceled,
    required TResult Function(AuthEventShownCancel value) shownCancel,
    required TResult Function(AuthEventLogoutStarted value) logoutStarted,
  }) {
    return loginCanceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLoginSuccessful value)? loginSuccessful,
    TResult Function(AuthEventLoginFailed value)? loginFailed,
    TResult Function(AuthEventLoginCanceled value)? loginCanceled,
    TResult Function(AuthEventShownCancel value)? shownCancel,
    TResult Function(AuthEventLogoutStarted value)? logoutStarted,
  }) {
    return loginCanceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLoginSuccessful value)? loginSuccessful,
    TResult Function(AuthEventLoginFailed value)? loginFailed,
    TResult Function(AuthEventLoginCanceled value)? loginCanceled,
    TResult Function(AuthEventShownCancel value)? shownCancel,
    TResult Function(AuthEventLogoutStarted value)? logoutStarted,
    required TResult orElse(),
  }) {
    if (loginCanceled != null) {
      return loginCanceled(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoginCanceled implements AuthEvent {
  const factory AuthEventLoginCanceled() = _$AuthEventLoginCanceled;
}

/// @nodoc
abstract class $AuthEventShownCancelCopyWith<$Res> {
  factory $AuthEventShownCancelCopyWith(AuthEventShownCancel value,
          $Res Function(AuthEventShownCancel) then) =
      _$AuthEventShownCancelCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventShownCancelCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventShownCancelCopyWith<$Res> {
  _$AuthEventShownCancelCopyWithImpl(
      AuthEventShownCancel _value, $Res Function(AuthEventShownCancel) _then)
      : super(_value, (v) => _then(v as AuthEventShownCancel));

  @override
  AuthEventShownCancel get _value => super._value as AuthEventShownCancel;
}

/// @nodoc

class _$AuthEventShownCancel implements AuthEventShownCancel {
  const _$AuthEventShownCancel();

  @override
  String toString() {
    return 'AuthEvent.shownCancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthEventShownCancel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loginStarted,
    required TResult Function() loginSuccessful,
    required TResult Function(SmarteamUserError error) loginFailed,
    required TResult Function() loginCanceled,
    required TResult Function() shownCancel,
    required TResult Function() logoutStarted,
  }) {
    return shownCancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? loginStarted,
    TResult Function()? loginSuccessful,
    TResult Function(SmarteamUserError error)? loginFailed,
    TResult Function()? loginCanceled,
    TResult Function()? shownCancel,
    TResult Function()? logoutStarted,
  }) {
    return shownCancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loginStarted,
    TResult Function()? loginSuccessful,
    TResult Function(SmarteamUserError error)? loginFailed,
    TResult Function()? loginCanceled,
    TResult Function()? shownCancel,
    TResult Function()? logoutStarted,
    required TResult orElse(),
  }) {
    if (shownCancel != null) {
      return shownCancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginStarted value) loginStarted,
    required TResult Function(AuthEventLoginSuccessful value) loginSuccessful,
    required TResult Function(AuthEventLoginFailed value) loginFailed,
    required TResult Function(AuthEventLoginCanceled value) loginCanceled,
    required TResult Function(AuthEventShownCancel value) shownCancel,
    required TResult Function(AuthEventLogoutStarted value) logoutStarted,
  }) {
    return shownCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLoginSuccessful value)? loginSuccessful,
    TResult Function(AuthEventLoginFailed value)? loginFailed,
    TResult Function(AuthEventLoginCanceled value)? loginCanceled,
    TResult Function(AuthEventShownCancel value)? shownCancel,
    TResult Function(AuthEventLogoutStarted value)? logoutStarted,
  }) {
    return shownCancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLoginSuccessful value)? loginSuccessful,
    TResult Function(AuthEventLoginFailed value)? loginFailed,
    TResult Function(AuthEventLoginCanceled value)? loginCanceled,
    TResult Function(AuthEventShownCancel value)? shownCancel,
    TResult Function(AuthEventLogoutStarted value)? logoutStarted,
    required TResult orElse(),
  }) {
    if (shownCancel != null) {
      return shownCancel(this);
    }
    return orElse();
  }
}

abstract class AuthEventShownCancel implements AuthEvent {
  const factory AuthEventShownCancel() = _$AuthEventShownCancel;
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
    required TResult Function(String username, String password) loginStarted,
    required TResult Function() loginSuccessful,
    required TResult Function(SmarteamUserError error) loginFailed,
    required TResult Function() loginCanceled,
    required TResult Function() shownCancel,
    required TResult Function() logoutStarted,
  }) {
    return logoutStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? loginStarted,
    TResult Function()? loginSuccessful,
    TResult Function(SmarteamUserError error)? loginFailed,
    TResult Function()? loginCanceled,
    TResult Function()? shownCancel,
    TResult Function()? logoutStarted,
  }) {
    return logoutStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loginStarted,
    TResult Function()? loginSuccessful,
    TResult Function(SmarteamUserError error)? loginFailed,
    TResult Function()? loginCanceled,
    TResult Function()? shownCancel,
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
    required TResult Function(AuthEventLoginSuccessful value) loginSuccessful,
    required TResult Function(AuthEventLoginFailed value) loginFailed,
    required TResult Function(AuthEventLoginCanceled value) loginCanceled,
    required TResult Function(AuthEventShownCancel value) shownCancel,
    required TResult Function(AuthEventLogoutStarted value) logoutStarted,
  }) {
    return logoutStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLoginSuccessful value)? loginSuccessful,
    TResult Function(AuthEventLoginFailed value)? loginFailed,
    TResult Function(AuthEventLoginCanceled value)? loginCanceled,
    TResult Function(AuthEventShownCancel value)? shownCancel,
    TResult Function(AuthEventLogoutStarted value)? logoutStarted,
  }) {
    return logoutStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginStarted value)? loginStarted,
    TResult Function(AuthEventLoginSuccessful value)? loginSuccessful,
    TResult Function(AuthEventLoginFailed value)? loginFailed,
    TResult Function(AuthEventLoginCanceled value)? loginCanceled,
    TResult Function(AuthEventShownCancel value)? shownCancel,
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

  AuthstateLoginInProgress loginInProgress({required bool showCancel}) {
    return AuthstateLoginInProgress(
      showCancel: showCancel,
    );
  }

  AuthStateLoginSuccess loginSuccess(Credential credential) {
    return AuthStateLoginSuccess(
      credential,
    );
  }

  AuthStateLoginCancelSuccess loginCancelSuccess() {
    return const AuthStateLoginCancelSuccess();
  }

  AuthStateLoginFailure loginFailure(SmarteamUserError error) {
    return AuthStateLoginFailure(
      error,
    );
  }

  AuthStateLogoutInProgress logoutInProgress() {
    return const AuthStateLogoutInProgress();
  }

  AuthStateLogoutFailure logoutFailure(SmarteamUserError error) {
    return AuthStateLogoutFailure(
      error,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(bool showCancel) loginInProgress,
    required TResult Function(Credential credential) loginSuccess,
    required TResult Function() loginCancelSuccess,
    required TResult Function(SmarteamUserError error) loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function(SmarteamUserError error) logoutFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(bool showCancel)? loginInProgress,
    TResult Function(Credential credential)? loginSuccess,
    TResult Function()? loginCancelSuccess,
    TResult Function(SmarteamUserError error)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function(SmarteamUserError error)? logoutFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(bool showCancel)? loginInProgress,
    TResult Function(Credential credential)? loginSuccess,
    TResult Function()? loginCancelSuccess,
    TResult Function(SmarteamUserError error)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function(SmarteamUserError error)? logoutFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthstateLoginInProgress value) loginInProgress,
    required TResult Function(AuthStateLoginSuccess value) loginSuccess,
    required TResult Function(AuthStateLoginCancelSuccess value)
        loginCancelSuccess,
    required TResult Function(AuthStateLoginFailure value) loginFailure,
    required TResult Function(AuthStateLogoutInProgress value) logoutInProgress,
    required TResult Function(AuthStateLogoutFailure value) logoutFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginCancelSuccess value)? loginCancelSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginCancelSuccess value)? loginCancelSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
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
    required TResult Function(bool showCancel) loginInProgress,
    required TResult Function(Credential credential) loginSuccess,
    required TResult Function() loginCancelSuccess,
    required TResult Function(SmarteamUserError error) loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function(SmarteamUserError error) logoutFailure,
  }) {
    return notAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(bool showCancel)? loginInProgress,
    TResult Function(Credential credential)? loginSuccess,
    TResult Function()? loginCancelSuccess,
    TResult Function(SmarteamUserError error)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function(SmarteamUserError error)? logoutFailure,
  }) {
    return notAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(bool showCancel)? loginInProgress,
    TResult Function(Credential credential)? loginSuccess,
    TResult Function()? loginCancelSuccess,
    TResult Function(SmarteamUserError error)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function(SmarteamUserError error)? logoutFailure,
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
    required TResult Function(AuthStateLoginCancelSuccess value)
        loginCancelSuccess,
    required TResult Function(AuthStateLoginFailure value) loginFailure,
    required TResult Function(AuthStateLogoutInProgress value) logoutInProgress,
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
    TResult Function(AuthStateLoginCancelSuccess value)? loginCancelSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
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
    TResult Function(AuthStateLoginCancelSuccess value)? loginCancelSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
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
  $Res call({bool showCancel});
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

  @override
  $Res call({
    Object? showCancel = freezed,
  }) {
    return _then(AuthstateLoginInProgress(
      showCancel: showCancel == freezed
          ? _value.showCancel
          : showCancel // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthstateLoginInProgress implements AuthstateLoginInProgress {
  const _$AuthstateLoginInProgress({required this.showCancel});

  @override
  final bool showCancel;

  @override
  String toString() {
    return 'AuthState.loginInProgress(showCancel: $showCancel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthstateLoginInProgress &&
            (identical(other.showCancel, showCancel) ||
                const DeepCollectionEquality()
                    .equals(other.showCancel, showCancel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(showCancel);

  @JsonKey(ignore: true)
  @override
  $AuthstateLoginInProgressCopyWith<AuthstateLoginInProgress> get copyWith =>
      _$AuthstateLoginInProgressCopyWithImpl<AuthstateLoginInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(bool showCancel) loginInProgress,
    required TResult Function(Credential credential) loginSuccess,
    required TResult Function() loginCancelSuccess,
    required TResult Function(SmarteamUserError error) loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function(SmarteamUserError error) logoutFailure,
  }) {
    return loginInProgress(showCancel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(bool showCancel)? loginInProgress,
    TResult Function(Credential credential)? loginSuccess,
    TResult Function()? loginCancelSuccess,
    TResult Function(SmarteamUserError error)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function(SmarteamUserError error)? logoutFailure,
  }) {
    return loginInProgress?.call(showCancel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(bool showCancel)? loginInProgress,
    TResult Function(Credential credential)? loginSuccess,
    TResult Function()? loginCancelSuccess,
    TResult Function(SmarteamUserError error)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function(SmarteamUserError error)? logoutFailure,
    required TResult orElse(),
  }) {
    if (loginInProgress != null) {
      return loginInProgress(showCancel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthstateLoginInProgress value) loginInProgress,
    required TResult Function(AuthStateLoginSuccess value) loginSuccess,
    required TResult Function(AuthStateLoginCancelSuccess value)
        loginCancelSuccess,
    required TResult Function(AuthStateLoginFailure value) loginFailure,
    required TResult Function(AuthStateLogoutInProgress value) logoutInProgress,
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
    TResult Function(AuthStateLoginCancelSuccess value)? loginCancelSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
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
    TResult Function(AuthStateLoginCancelSuccess value)? loginCancelSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
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
  const factory AuthstateLoginInProgress({required bool showCancel}) =
      _$AuthstateLoginInProgress;

  bool get showCancel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthstateLoginInProgressCopyWith<AuthstateLoginInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateLoginSuccessCopyWith<$Res> {
  factory $AuthStateLoginSuccessCopyWith(AuthStateLoginSuccess value,
          $Res Function(AuthStateLoginSuccess) then) =
      _$AuthStateLoginSuccessCopyWithImpl<$Res>;
  $Res call({Credential credential});
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

  @override
  $Res call({
    Object? credential = freezed,
  }) {
    return _then(AuthStateLoginSuccess(
      credential == freezed
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as Credential,
    ));
  }
}

/// @nodoc

class _$AuthStateLoginSuccess implements AuthStateLoginSuccess {
  const _$AuthStateLoginSuccess(this.credential);

  @override
  final Credential credential;

  @override
  String toString() {
    return 'AuthState.loginSuccess(credential: $credential)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthStateLoginSuccess &&
            (identical(other.credential, credential) ||
                const DeepCollectionEquality()
                    .equals(other.credential, credential)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(credential);

  @JsonKey(ignore: true)
  @override
  $AuthStateLoginSuccessCopyWith<AuthStateLoginSuccess> get copyWith =>
      _$AuthStateLoginSuccessCopyWithImpl<AuthStateLoginSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(bool showCancel) loginInProgress,
    required TResult Function(Credential credential) loginSuccess,
    required TResult Function() loginCancelSuccess,
    required TResult Function(SmarteamUserError error) loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function(SmarteamUserError error) logoutFailure,
  }) {
    return loginSuccess(credential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(bool showCancel)? loginInProgress,
    TResult Function(Credential credential)? loginSuccess,
    TResult Function()? loginCancelSuccess,
    TResult Function(SmarteamUserError error)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function(SmarteamUserError error)? logoutFailure,
  }) {
    return loginSuccess?.call(credential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(bool showCancel)? loginInProgress,
    TResult Function(Credential credential)? loginSuccess,
    TResult Function()? loginCancelSuccess,
    TResult Function(SmarteamUserError error)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function(SmarteamUserError error)? logoutFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(credential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthstateLoginInProgress value) loginInProgress,
    required TResult Function(AuthStateLoginSuccess value) loginSuccess,
    required TResult Function(AuthStateLoginCancelSuccess value)
        loginCancelSuccess,
    required TResult Function(AuthStateLoginFailure value) loginFailure,
    required TResult Function(AuthStateLogoutInProgress value) logoutInProgress,
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
    TResult Function(AuthStateLoginCancelSuccess value)? loginCancelSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
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
    TResult Function(AuthStateLoginCancelSuccess value)? loginCancelSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
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
  const factory AuthStateLoginSuccess(Credential credential) =
      _$AuthStateLoginSuccess;

  Credential get credential => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateLoginSuccessCopyWith<AuthStateLoginSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateLoginCancelSuccessCopyWith<$Res> {
  factory $AuthStateLoginCancelSuccessCopyWith(
          AuthStateLoginCancelSuccess value,
          $Res Function(AuthStateLoginCancelSuccess) then) =
      _$AuthStateLoginCancelSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateLoginCancelSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateLoginCancelSuccessCopyWith<$Res> {
  _$AuthStateLoginCancelSuccessCopyWithImpl(AuthStateLoginCancelSuccess _value,
      $Res Function(AuthStateLoginCancelSuccess) _then)
      : super(_value, (v) => _then(v as AuthStateLoginCancelSuccess));

  @override
  AuthStateLoginCancelSuccess get _value =>
      super._value as AuthStateLoginCancelSuccess;
}

/// @nodoc

class _$AuthStateLoginCancelSuccess implements AuthStateLoginCancelSuccess {
  const _$AuthStateLoginCancelSuccess();

  @override
  String toString() {
    return 'AuthState.loginCancelSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateLoginCancelSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(bool showCancel) loginInProgress,
    required TResult Function(Credential credential) loginSuccess,
    required TResult Function() loginCancelSuccess,
    required TResult Function(SmarteamUserError error) loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function(SmarteamUserError error) logoutFailure,
  }) {
    return loginCancelSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(bool showCancel)? loginInProgress,
    TResult Function(Credential credential)? loginSuccess,
    TResult Function()? loginCancelSuccess,
    TResult Function(SmarteamUserError error)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function(SmarteamUserError error)? logoutFailure,
  }) {
    return loginCancelSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(bool showCancel)? loginInProgress,
    TResult Function(Credential credential)? loginSuccess,
    TResult Function()? loginCancelSuccess,
    TResult Function(SmarteamUserError error)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function(SmarteamUserError error)? logoutFailure,
    required TResult orElse(),
  }) {
    if (loginCancelSuccess != null) {
      return loginCancelSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthstateLoginInProgress value) loginInProgress,
    required TResult Function(AuthStateLoginSuccess value) loginSuccess,
    required TResult Function(AuthStateLoginCancelSuccess value)
        loginCancelSuccess,
    required TResult Function(AuthStateLoginFailure value) loginFailure,
    required TResult Function(AuthStateLogoutInProgress value) logoutInProgress,
    required TResult Function(AuthStateLogoutFailure value) logoutFailure,
  }) {
    return loginCancelSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginCancelSuccess value)? loginCancelSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
  }) {
    return loginCancelSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthstateLoginInProgress value)? loginInProgress,
    TResult Function(AuthStateLoginSuccess value)? loginSuccess,
    TResult Function(AuthStateLoginCancelSuccess value)? loginCancelSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
    TResult Function(AuthStateLogoutFailure value)? logoutFailure,
    required TResult orElse(),
  }) {
    if (loginCancelSuccess != null) {
      return loginCancelSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoginCancelSuccess implements AuthState {
  const factory AuthStateLoginCancelSuccess() = _$AuthStateLoginCancelSuccess;
}

/// @nodoc
abstract class $AuthStateLoginFailureCopyWith<$Res> {
  factory $AuthStateLoginFailureCopyWith(AuthStateLoginFailure value,
          $Res Function(AuthStateLoginFailure) then) =
      _$AuthStateLoginFailureCopyWithImpl<$Res>;
  $Res call({SmarteamUserError error});

  $SmarteamUserErrorCopyWith<$Res> get error;
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

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(AuthStateLoginFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SmarteamUserError,
    ));
  }

  @override
  $SmarteamUserErrorCopyWith<$Res> get error {
    return $SmarteamUserErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$AuthStateLoginFailure implements AuthStateLoginFailure {
  const _$AuthStateLoginFailure(this.error);

  @override
  final SmarteamUserError error;

  @override
  String toString() {
    return 'AuthState.loginFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthStateLoginFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $AuthStateLoginFailureCopyWith<AuthStateLoginFailure> get copyWith =>
      _$AuthStateLoginFailureCopyWithImpl<AuthStateLoginFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(bool showCancel) loginInProgress,
    required TResult Function(Credential credential) loginSuccess,
    required TResult Function() loginCancelSuccess,
    required TResult Function(SmarteamUserError error) loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function(SmarteamUserError error) logoutFailure,
  }) {
    return loginFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(bool showCancel)? loginInProgress,
    TResult Function(Credential credential)? loginSuccess,
    TResult Function()? loginCancelSuccess,
    TResult Function(SmarteamUserError error)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function(SmarteamUserError error)? logoutFailure,
  }) {
    return loginFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(bool showCancel)? loginInProgress,
    TResult Function(Credential credential)? loginSuccess,
    TResult Function()? loginCancelSuccess,
    TResult Function(SmarteamUserError error)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function(SmarteamUserError error)? logoutFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthstateLoginInProgress value) loginInProgress,
    required TResult Function(AuthStateLoginSuccess value) loginSuccess,
    required TResult Function(AuthStateLoginCancelSuccess value)
        loginCancelSuccess,
    required TResult Function(AuthStateLoginFailure value) loginFailure,
    required TResult Function(AuthStateLogoutInProgress value) logoutInProgress,
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
    TResult Function(AuthStateLoginCancelSuccess value)? loginCancelSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
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
    TResult Function(AuthStateLoginCancelSuccess value)? loginCancelSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
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
  const factory AuthStateLoginFailure(SmarteamUserError error) =
      _$AuthStateLoginFailure;

  SmarteamUserError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateLoginFailureCopyWith<AuthStateLoginFailure> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(bool showCancel) loginInProgress,
    required TResult Function(Credential credential) loginSuccess,
    required TResult Function() loginCancelSuccess,
    required TResult Function(SmarteamUserError error) loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function(SmarteamUserError error) logoutFailure,
  }) {
    return logoutInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(bool showCancel)? loginInProgress,
    TResult Function(Credential credential)? loginSuccess,
    TResult Function()? loginCancelSuccess,
    TResult Function(SmarteamUserError error)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function(SmarteamUserError error)? logoutFailure,
  }) {
    return logoutInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(bool showCancel)? loginInProgress,
    TResult Function(Credential credential)? loginSuccess,
    TResult Function()? loginCancelSuccess,
    TResult Function(SmarteamUserError error)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function(SmarteamUserError error)? logoutFailure,
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
    required TResult Function(AuthStateLoginCancelSuccess value)
        loginCancelSuccess,
    required TResult Function(AuthStateLoginFailure value) loginFailure,
    required TResult Function(AuthStateLogoutInProgress value) logoutInProgress,
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
    TResult Function(AuthStateLoginCancelSuccess value)? loginCancelSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
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
    TResult Function(AuthStateLoginCancelSuccess value)? loginCancelSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
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
abstract class $AuthStateLogoutFailureCopyWith<$Res> {
  factory $AuthStateLogoutFailureCopyWith(AuthStateLogoutFailure value,
          $Res Function(AuthStateLogoutFailure) then) =
      _$AuthStateLogoutFailureCopyWithImpl<$Res>;
  $Res call({SmarteamUserError error});

  $SmarteamUserErrorCopyWith<$Res> get error;
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

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(AuthStateLogoutFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SmarteamUserError,
    ));
  }

  @override
  $SmarteamUserErrorCopyWith<$Res> get error {
    return $SmarteamUserErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$AuthStateLogoutFailure implements AuthStateLogoutFailure {
  const _$AuthStateLogoutFailure(this.error);

  @override
  final SmarteamUserError error;

  @override
  String toString() {
    return 'AuthState.logoutFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthStateLogoutFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $AuthStateLogoutFailureCopyWith<AuthStateLogoutFailure> get copyWith =>
      _$AuthStateLogoutFailureCopyWithImpl<AuthStateLogoutFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(bool showCancel) loginInProgress,
    required TResult Function(Credential credential) loginSuccess,
    required TResult Function() loginCancelSuccess,
    required TResult Function(SmarteamUserError error) loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function(SmarteamUserError error) logoutFailure,
  }) {
    return logoutFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(bool showCancel)? loginInProgress,
    TResult Function(Credential credential)? loginSuccess,
    TResult Function()? loginCancelSuccess,
    TResult Function(SmarteamUserError error)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function(SmarteamUserError error)? logoutFailure,
  }) {
    return logoutFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(bool showCancel)? loginInProgress,
    TResult Function(Credential credential)? loginSuccess,
    TResult Function()? loginCancelSuccess,
    TResult Function(SmarteamUserError error)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function(SmarteamUserError error)? logoutFailure,
    required TResult orElse(),
  }) {
    if (logoutFailure != null) {
      return logoutFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(AuthstateLoginInProgress value) loginInProgress,
    required TResult Function(AuthStateLoginSuccess value) loginSuccess,
    required TResult Function(AuthStateLoginCancelSuccess value)
        loginCancelSuccess,
    required TResult Function(AuthStateLoginFailure value) loginFailure,
    required TResult Function(AuthStateLogoutInProgress value) logoutInProgress,
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
    TResult Function(AuthStateLoginCancelSuccess value)? loginCancelSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
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
    TResult Function(AuthStateLoginCancelSuccess value)? loginCancelSuccess,
    TResult Function(AuthStateLoginFailure value)? loginFailure,
    TResult Function(AuthStateLogoutInProgress value)? logoutInProgress,
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
  const factory AuthStateLogoutFailure(SmarteamUserError error) =
      _$AuthStateLogoutFailure;

  SmarteamUserError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateLogoutFailureCopyWith<AuthStateLogoutFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
