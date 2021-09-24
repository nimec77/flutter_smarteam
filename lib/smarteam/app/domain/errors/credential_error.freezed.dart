// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'credential_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CredentialErrorTearOff {
  const _$CredentialErrorTearOff();

  CredentialErrorSid sid(Error error) {
    return CredentialErrorSid(
      error,
    );
  }

  CredentialErrorDatabase database(Error error) {
    return CredentialErrorDatabase(
      error,
    );
  }

  CredentialErrorEncode encode(Error error) {
    return CredentialErrorEncode(
      error,
    );
  }

  CredentialErrorDecode decode(Error error) {
    return CredentialErrorDecode(
      error,
    );
  }
}

/// @nodoc
const $CredentialError = _$CredentialErrorTearOff();

/// @nodoc
mixin _$CredentialError {
  Error get error => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) sid,
    required TResult Function(Error error) database,
    required TResult Function(Error error) encode,
    required TResult Function(Error error) decode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Error error)? sid,
    TResult Function(Error error)? database,
    TResult Function(Error error)? encode,
    TResult Function(Error error)? decode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? sid,
    TResult Function(Error error)? database,
    TResult Function(Error error)? encode,
    TResult Function(Error error)? decode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CredentialErrorSid value) sid,
    required TResult Function(CredentialErrorDatabase value) database,
    required TResult Function(CredentialErrorEncode value) encode,
    required TResult Function(CredentialErrorDecode value) decode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialErrorSid value)? sid,
    TResult Function(CredentialErrorDatabase value)? database,
    TResult Function(CredentialErrorEncode value)? encode,
    TResult Function(CredentialErrorDecode value)? decode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialErrorSid value)? sid,
    TResult Function(CredentialErrorDatabase value)? database,
    TResult Function(CredentialErrorEncode value)? encode,
    TResult Function(CredentialErrorDecode value)? decode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CredentialErrorCopyWith<CredentialError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialErrorCopyWith<$Res> {
  factory $CredentialErrorCopyWith(
          CredentialError value, $Res Function(CredentialError) then) =
      _$CredentialErrorCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class _$CredentialErrorCopyWithImpl<$Res>
    implements $CredentialErrorCopyWith<$Res> {
  _$CredentialErrorCopyWithImpl(this._value, this._then);

  final CredentialError _value;
  // ignore: unused_field
  final $Res Function(CredentialError) _then;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc
abstract class $CredentialErrorSidCopyWith<$Res>
    implements $CredentialErrorCopyWith<$Res> {
  factory $CredentialErrorSidCopyWith(
          CredentialErrorSid value, $Res Function(CredentialErrorSid) then) =
      _$CredentialErrorSidCopyWithImpl<$Res>;
  @override
  $Res call({Error error});
}

/// @nodoc
class _$CredentialErrorSidCopyWithImpl<$Res>
    extends _$CredentialErrorCopyWithImpl<$Res>
    implements $CredentialErrorSidCopyWith<$Res> {
  _$CredentialErrorSidCopyWithImpl(
      CredentialErrorSid _value, $Res Function(CredentialErrorSid) _then)
      : super(_value, (v) => _then(v as CredentialErrorSid));

  @override
  CredentialErrorSid get _value => super._value as CredentialErrorSid;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CredentialErrorSid(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$CredentialErrorSid implements CredentialErrorSid {
  const _$CredentialErrorSid(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'CredentialError.sid(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CredentialErrorSid &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CredentialErrorSidCopyWith<CredentialErrorSid> get copyWith =>
      _$CredentialErrorSidCopyWithImpl<CredentialErrorSid>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) sid,
    required TResult Function(Error error) database,
    required TResult Function(Error error) encode,
    required TResult Function(Error error) decode,
  }) {
    return sid(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Error error)? sid,
    TResult Function(Error error)? database,
    TResult Function(Error error)? encode,
    TResult Function(Error error)? decode,
  }) {
    return sid?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? sid,
    TResult Function(Error error)? database,
    TResult Function(Error error)? encode,
    TResult Function(Error error)? decode,
    required TResult orElse(),
  }) {
    if (sid != null) {
      return sid(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CredentialErrorSid value) sid,
    required TResult Function(CredentialErrorDatabase value) database,
    required TResult Function(CredentialErrorEncode value) encode,
    required TResult Function(CredentialErrorDecode value) decode,
  }) {
    return sid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialErrorSid value)? sid,
    TResult Function(CredentialErrorDatabase value)? database,
    TResult Function(CredentialErrorEncode value)? encode,
    TResult Function(CredentialErrorDecode value)? decode,
  }) {
    return sid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialErrorSid value)? sid,
    TResult Function(CredentialErrorDatabase value)? database,
    TResult Function(CredentialErrorEncode value)? encode,
    TResult Function(CredentialErrorDecode value)? decode,
    required TResult orElse(),
  }) {
    if (sid != null) {
      return sid(this);
    }
    return orElse();
  }
}

abstract class CredentialErrorSid implements CredentialError {
  const factory CredentialErrorSid(Error error) = _$CredentialErrorSid;

  @override
  Error get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CredentialErrorSidCopyWith<CredentialErrorSid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialErrorDatabaseCopyWith<$Res>
    implements $CredentialErrorCopyWith<$Res> {
  factory $CredentialErrorDatabaseCopyWith(CredentialErrorDatabase value,
          $Res Function(CredentialErrorDatabase) then) =
      _$CredentialErrorDatabaseCopyWithImpl<$Res>;
  @override
  $Res call({Error error});
}

/// @nodoc
class _$CredentialErrorDatabaseCopyWithImpl<$Res>
    extends _$CredentialErrorCopyWithImpl<$Res>
    implements $CredentialErrorDatabaseCopyWith<$Res> {
  _$CredentialErrorDatabaseCopyWithImpl(CredentialErrorDatabase _value,
      $Res Function(CredentialErrorDatabase) _then)
      : super(_value, (v) => _then(v as CredentialErrorDatabase));

  @override
  CredentialErrorDatabase get _value => super._value as CredentialErrorDatabase;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CredentialErrorDatabase(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$CredentialErrorDatabase implements CredentialErrorDatabase {
  const _$CredentialErrorDatabase(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'CredentialError.database(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CredentialErrorDatabase &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CredentialErrorDatabaseCopyWith<CredentialErrorDatabase> get copyWith =>
      _$CredentialErrorDatabaseCopyWithImpl<CredentialErrorDatabase>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) sid,
    required TResult Function(Error error) database,
    required TResult Function(Error error) encode,
    required TResult Function(Error error) decode,
  }) {
    return database(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Error error)? sid,
    TResult Function(Error error)? database,
    TResult Function(Error error)? encode,
    TResult Function(Error error)? decode,
  }) {
    return database?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? sid,
    TResult Function(Error error)? database,
    TResult Function(Error error)? encode,
    TResult Function(Error error)? decode,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CredentialErrorSid value) sid,
    required TResult Function(CredentialErrorDatabase value) database,
    required TResult Function(CredentialErrorEncode value) encode,
    required TResult Function(CredentialErrorDecode value) decode,
  }) {
    return database(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialErrorSid value)? sid,
    TResult Function(CredentialErrorDatabase value)? database,
    TResult Function(CredentialErrorEncode value)? encode,
    TResult Function(CredentialErrorDecode value)? decode,
  }) {
    return database?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialErrorSid value)? sid,
    TResult Function(CredentialErrorDatabase value)? database,
    TResult Function(CredentialErrorEncode value)? encode,
    TResult Function(CredentialErrorDecode value)? decode,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(this);
    }
    return orElse();
  }
}

abstract class CredentialErrorDatabase implements CredentialError {
  const factory CredentialErrorDatabase(Error error) =
      _$CredentialErrorDatabase;

  @override
  Error get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CredentialErrorDatabaseCopyWith<CredentialErrorDatabase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialErrorEncodeCopyWith<$Res>
    implements $CredentialErrorCopyWith<$Res> {
  factory $CredentialErrorEncodeCopyWith(CredentialErrorEncode value,
          $Res Function(CredentialErrorEncode) then) =
      _$CredentialErrorEncodeCopyWithImpl<$Res>;
  @override
  $Res call({Error error});
}

/// @nodoc
class _$CredentialErrorEncodeCopyWithImpl<$Res>
    extends _$CredentialErrorCopyWithImpl<$Res>
    implements $CredentialErrorEncodeCopyWith<$Res> {
  _$CredentialErrorEncodeCopyWithImpl(
      CredentialErrorEncode _value, $Res Function(CredentialErrorEncode) _then)
      : super(_value, (v) => _then(v as CredentialErrorEncode));

  @override
  CredentialErrorEncode get _value => super._value as CredentialErrorEncode;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CredentialErrorEncode(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$CredentialErrorEncode implements CredentialErrorEncode {
  const _$CredentialErrorEncode(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'CredentialError.encode(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CredentialErrorEncode &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CredentialErrorEncodeCopyWith<CredentialErrorEncode> get copyWith =>
      _$CredentialErrorEncodeCopyWithImpl<CredentialErrorEncode>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) sid,
    required TResult Function(Error error) database,
    required TResult Function(Error error) encode,
    required TResult Function(Error error) decode,
  }) {
    return encode(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Error error)? sid,
    TResult Function(Error error)? database,
    TResult Function(Error error)? encode,
    TResult Function(Error error)? decode,
  }) {
    return encode?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? sid,
    TResult Function(Error error)? database,
    TResult Function(Error error)? encode,
    TResult Function(Error error)? decode,
    required TResult orElse(),
  }) {
    if (encode != null) {
      return encode(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CredentialErrorSid value) sid,
    required TResult Function(CredentialErrorDatabase value) database,
    required TResult Function(CredentialErrorEncode value) encode,
    required TResult Function(CredentialErrorDecode value) decode,
  }) {
    return encode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialErrorSid value)? sid,
    TResult Function(CredentialErrorDatabase value)? database,
    TResult Function(CredentialErrorEncode value)? encode,
    TResult Function(CredentialErrorDecode value)? decode,
  }) {
    return encode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialErrorSid value)? sid,
    TResult Function(CredentialErrorDatabase value)? database,
    TResult Function(CredentialErrorEncode value)? encode,
    TResult Function(CredentialErrorDecode value)? decode,
    required TResult orElse(),
  }) {
    if (encode != null) {
      return encode(this);
    }
    return orElse();
  }
}

abstract class CredentialErrorEncode implements CredentialError {
  const factory CredentialErrorEncode(Error error) = _$CredentialErrorEncode;

  @override
  Error get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CredentialErrorEncodeCopyWith<CredentialErrorEncode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialErrorDecodeCopyWith<$Res>
    implements $CredentialErrorCopyWith<$Res> {
  factory $CredentialErrorDecodeCopyWith(CredentialErrorDecode value,
          $Res Function(CredentialErrorDecode) then) =
      _$CredentialErrorDecodeCopyWithImpl<$Res>;
  @override
  $Res call({Error error});
}

/// @nodoc
class _$CredentialErrorDecodeCopyWithImpl<$Res>
    extends _$CredentialErrorCopyWithImpl<$Res>
    implements $CredentialErrorDecodeCopyWith<$Res> {
  _$CredentialErrorDecodeCopyWithImpl(
      CredentialErrorDecode _value, $Res Function(CredentialErrorDecode) _then)
      : super(_value, (v) => _then(v as CredentialErrorDecode));

  @override
  CredentialErrorDecode get _value => super._value as CredentialErrorDecode;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CredentialErrorDecode(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$CredentialErrorDecode implements CredentialErrorDecode {
  const _$CredentialErrorDecode(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'CredentialError.decode(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CredentialErrorDecode &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CredentialErrorDecodeCopyWith<CredentialErrorDecode> get copyWith =>
      _$CredentialErrorDecodeCopyWithImpl<CredentialErrorDecode>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) sid,
    required TResult Function(Error error) database,
    required TResult Function(Error error) encode,
    required TResult Function(Error error) decode,
  }) {
    return decode(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Error error)? sid,
    TResult Function(Error error)? database,
    TResult Function(Error error)? encode,
    TResult Function(Error error)? decode,
  }) {
    return decode?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? sid,
    TResult Function(Error error)? database,
    TResult Function(Error error)? encode,
    TResult Function(Error error)? decode,
    required TResult orElse(),
  }) {
    if (decode != null) {
      return decode(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CredentialErrorSid value) sid,
    required TResult Function(CredentialErrorDatabase value) database,
    required TResult Function(CredentialErrorEncode value) encode,
    required TResult Function(CredentialErrorDecode value) decode,
  }) {
    return decode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CredentialErrorSid value)? sid,
    TResult Function(CredentialErrorDatabase value)? database,
    TResult Function(CredentialErrorEncode value)? encode,
    TResult Function(CredentialErrorDecode value)? decode,
  }) {
    return decode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CredentialErrorSid value)? sid,
    TResult Function(CredentialErrorDatabase value)? database,
    TResult Function(CredentialErrorEncode value)? encode,
    TResult Function(CredentialErrorDecode value)? decode,
    required TResult orElse(),
  }) {
    if (decode != null) {
      return decode(this);
    }
    return orElse();
  }
}

abstract class CredentialErrorDecode implements CredentialError {
  const factory CredentialErrorDecode(Error error) = _$CredentialErrorDecode;

  @override
  Error get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CredentialErrorDecodeCopyWith<CredentialErrorDecode> get copyWith =>
      throw _privateConstructorUsedError;
}
