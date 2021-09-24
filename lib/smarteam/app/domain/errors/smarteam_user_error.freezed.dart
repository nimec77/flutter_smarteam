// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'smarteam_user_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SmarteamUserErrorTearOff {
  const _$SmarteamUserErrorTearOff();

  SmarteamUserErrorLogin login(Error error) {
    return SmarteamUserErrorLogin(
      error,
    );
  }

  SmarteamUserErrorLogout logout(Error error) {
    return SmarteamUserErrorLogout(
      error,
    );
  }

  SmarteamUserErrorCredential credential(CredentialError error) {
    return SmarteamUserErrorCredential(
      error,
    );
  }
}

/// @nodoc
const $SmarteamUserError = _$SmarteamUserErrorTearOff();

/// @nodoc
mixin _$SmarteamUserError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) login,
    required TResult Function(Error error) logout,
    required TResult Function(CredentialError error) credential,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Error error)? login,
    TResult Function(Error error)? logout,
    TResult Function(CredentialError error)? credential,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? login,
    TResult Function(Error error)? logout,
    TResult Function(CredentialError error)? credential,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SmarteamUserErrorLogin value) login,
    required TResult Function(SmarteamUserErrorLogout value) logout,
    required TResult Function(SmarteamUserErrorCredential value) credential,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SmarteamUserErrorLogin value)? login,
    TResult Function(SmarteamUserErrorLogout value)? logout,
    TResult Function(SmarteamUserErrorCredential value)? credential,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SmarteamUserErrorLogin value)? login,
    TResult Function(SmarteamUserErrorLogout value)? logout,
    TResult Function(SmarteamUserErrorCredential value)? credential,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmarteamUserErrorCopyWith<$Res> {
  factory $SmarteamUserErrorCopyWith(
          SmarteamUserError value, $Res Function(SmarteamUserError) then) =
      _$SmarteamUserErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$SmarteamUserErrorCopyWithImpl<$Res>
    implements $SmarteamUserErrorCopyWith<$Res> {
  _$SmarteamUserErrorCopyWithImpl(this._value, this._then);

  final SmarteamUserError _value;
  // ignore: unused_field
  final $Res Function(SmarteamUserError) _then;
}

/// @nodoc
abstract class $SmarteamUserErrorLoginCopyWith<$Res> {
  factory $SmarteamUserErrorLoginCopyWith(SmarteamUserErrorLogin value,
          $Res Function(SmarteamUserErrorLogin) then) =
      _$SmarteamUserErrorLoginCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class _$SmarteamUserErrorLoginCopyWithImpl<$Res>
    extends _$SmarteamUserErrorCopyWithImpl<$Res>
    implements $SmarteamUserErrorLoginCopyWith<$Res> {
  _$SmarteamUserErrorLoginCopyWithImpl(SmarteamUserErrorLogin _value,
      $Res Function(SmarteamUserErrorLogin) _then)
      : super(_value, (v) => _then(v as SmarteamUserErrorLogin));

  @override
  SmarteamUserErrorLogin get _value => super._value as SmarteamUserErrorLogin;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SmarteamUserErrorLogin(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$SmarteamUserErrorLogin implements SmarteamUserErrorLogin {
  const _$SmarteamUserErrorLogin(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'SmarteamUserError.login(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SmarteamUserErrorLogin &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $SmarteamUserErrorLoginCopyWith<SmarteamUserErrorLogin> get copyWith =>
      _$SmarteamUserErrorLoginCopyWithImpl<SmarteamUserErrorLogin>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) login,
    required TResult Function(Error error) logout,
    required TResult Function(CredentialError error) credential,
  }) {
    return login(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Error error)? login,
    TResult Function(Error error)? logout,
    TResult Function(CredentialError error)? credential,
  }) {
    return login?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? login,
    TResult Function(Error error)? logout,
    TResult Function(CredentialError error)? credential,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SmarteamUserErrorLogin value) login,
    required TResult Function(SmarteamUserErrorLogout value) logout,
    required TResult Function(SmarteamUserErrorCredential value) credential,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SmarteamUserErrorLogin value)? login,
    TResult Function(SmarteamUserErrorLogout value)? logout,
    TResult Function(SmarteamUserErrorCredential value)? credential,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SmarteamUserErrorLogin value)? login,
    TResult Function(SmarteamUserErrorLogout value)? logout,
    TResult Function(SmarteamUserErrorCredential value)? credential,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class SmarteamUserErrorLogin implements SmarteamUserError {
  const factory SmarteamUserErrorLogin(Error error) = _$SmarteamUserErrorLogin;

  Error get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmarteamUserErrorLoginCopyWith<SmarteamUserErrorLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmarteamUserErrorLogoutCopyWith<$Res> {
  factory $SmarteamUserErrorLogoutCopyWith(SmarteamUserErrorLogout value,
          $Res Function(SmarteamUserErrorLogout) then) =
      _$SmarteamUserErrorLogoutCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class _$SmarteamUserErrorLogoutCopyWithImpl<$Res>
    extends _$SmarteamUserErrorCopyWithImpl<$Res>
    implements $SmarteamUserErrorLogoutCopyWith<$Res> {
  _$SmarteamUserErrorLogoutCopyWithImpl(SmarteamUserErrorLogout _value,
      $Res Function(SmarteamUserErrorLogout) _then)
      : super(_value, (v) => _then(v as SmarteamUserErrorLogout));

  @override
  SmarteamUserErrorLogout get _value => super._value as SmarteamUserErrorLogout;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SmarteamUserErrorLogout(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$SmarteamUserErrorLogout implements SmarteamUserErrorLogout {
  const _$SmarteamUserErrorLogout(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'SmarteamUserError.logout(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SmarteamUserErrorLogout &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $SmarteamUserErrorLogoutCopyWith<SmarteamUserErrorLogout> get copyWith =>
      _$SmarteamUserErrorLogoutCopyWithImpl<SmarteamUserErrorLogout>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) login,
    required TResult Function(Error error) logout,
    required TResult Function(CredentialError error) credential,
  }) {
    return logout(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Error error)? login,
    TResult Function(Error error)? logout,
    TResult Function(CredentialError error)? credential,
  }) {
    return logout?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? login,
    TResult Function(Error error)? logout,
    TResult Function(CredentialError error)? credential,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SmarteamUserErrorLogin value) login,
    required TResult Function(SmarteamUserErrorLogout value) logout,
    required TResult Function(SmarteamUserErrorCredential value) credential,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SmarteamUserErrorLogin value)? login,
    TResult Function(SmarteamUserErrorLogout value)? logout,
    TResult Function(SmarteamUserErrorCredential value)? credential,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SmarteamUserErrorLogin value)? login,
    TResult Function(SmarteamUserErrorLogout value)? logout,
    TResult Function(SmarteamUserErrorCredential value)? credential,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class SmarteamUserErrorLogout implements SmarteamUserError {
  const factory SmarteamUserErrorLogout(Error error) =
      _$SmarteamUserErrorLogout;

  Error get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmarteamUserErrorLogoutCopyWith<SmarteamUserErrorLogout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmarteamUserErrorCredentialCopyWith<$Res> {
  factory $SmarteamUserErrorCredentialCopyWith(
          SmarteamUserErrorCredential value,
          $Res Function(SmarteamUserErrorCredential) then) =
      _$SmarteamUserErrorCredentialCopyWithImpl<$Res>;
  $Res call({CredentialError error});

  $CredentialErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$SmarteamUserErrorCredentialCopyWithImpl<$Res>
    extends _$SmarteamUserErrorCopyWithImpl<$Res>
    implements $SmarteamUserErrorCredentialCopyWith<$Res> {
  _$SmarteamUserErrorCredentialCopyWithImpl(SmarteamUserErrorCredential _value,
      $Res Function(SmarteamUserErrorCredential) _then)
      : super(_value, (v) => _then(v as SmarteamUserErrorCredential));

  @override
  SmarteamUserErrorCredential get _value =>
      super._value as SmarteamUserErrorCredential;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SmarteamUserErrorCredential(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CredentialError,
    ));
  }

  @override
  $CredentialErrorCopyWith<$Res> get error {
    return $CredentialErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$SmarteamUserErrorCredential implements SmarteamUserErrorCredential {
  const _$SmarteamUserErrorCredential(this.error);

  @override
  final CredentialError error;

  @override
  String toString() {
    return 'SmarteamUserError.credential(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SmarteamUserErrorCredential &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $SmarteamUserErrorCredentialCopyWith<SmarteamUserErrorCredential>
      get copyWith => _$SmarteamUserErrorCredentialCopyWithImpl<
          SmarteamUserErrorCredential>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) login,
    required TResult Function(Error error) logout,
    required TResult Function(CredentialError error) credential,
  }) {
    return credential(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Error error)? login,
    TResult Function(Error error)? logout,
    TResult Function(CredentialError error)? credential,
  }) {
    return credential?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? login,
    TResult Function(Error error)? logout,
    TResult Function(CredentialError error)? credential,
    required TResult orElse(),
  }) {
    if (credential != null) {
      return credential(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SmarteamUserErrorLogin value) login,
    required TResult Function(SmarteamUserErrorLogout value) logout,
    required TResult Function(SmarteamUserErrorCredential value) credential,
  }) {
    return credential(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SmarteamUserErrorLogin value)? login,
    TResult Function(SmarteamUserErrorLogout value)? logout,
    TResult Function(SmarteamUserErrorCredential value)? credential,
  }) {
    return credential?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SmarteamUserErrorLogin value)? login,
    TResult Function(SmarteamUserErrorLogout value)? logout,
    TResult Function(SmarteamUserErrorCredential value)? credential,
    required TResult orElse(),
  }) {
    if (credential != null) {
      return credential(this);
    }
    return orElse();
  }
}

abstract class SmarteamUserErrorCredential implements SmarteamUserError {
  const factory SmarteamUserErrorCredential(CredentialError error) =
      _$SmarteamUserErrorCredential;

  CredentialError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmarteamUserErrorCredentialCopyWith<SmarteamUserErrorCredential>
      get copyWith => throw _privateConstructorUsedError;
}
