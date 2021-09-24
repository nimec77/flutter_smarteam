// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'smarteam_init_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SmarteamInitErrorTearOff {
  const _$SmarteamInitErrorTearOff();

  SmarteamInitErrorInit init(Error error) {
    return SmarteamInitErrorInit(
      error,
    );
  }
}

/// @nodoc
const $SmarteamInitError = _$SmarteamInitErrorTearOff();

/// @nodoc
mixin _$SmarteamInitError {
  Error get error => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Error error)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SmarteamInitErrorInit value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SmarteamInitErrorInit value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SmarteamInitErrorInit value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SmarteamInitErrorCopyWith<SmarteamInitError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmarteamInitErrorCopyWith<$Res> {
  factory $SmarteamInitErrorCopyWith(
          SmarteamInitError value, $Res Function(SmarteamInitError) then) =
      _$SmarteamInitErrorCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class _$SmarteamInitErrorCopyWithImpl<$Res>
    implements $SmarteamInitErrorCopyWith<$Res> {
  _$SmarteamInitErrorCopyWithImpl(this._value, this._then);

  final SmarteamInitError _value;
  // ignore: unused_field
  final $Res Function(SmarteamInitError) _then;

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
abstract class $SmarteamInitErrorInitCopyWith<$Res>
    implements $SmarteamInitErrorCopyWith<$Res> {
  factory $SmarteamInitErrorInitCopyWith(SmarteamInitErrorInit value,
          $Res Function(SmarteamInitErrorInit) then) =
      _$SmarteamInitErrorInitCopyWithImpl<$Res>;
  @override
  $Res call({Error error});
}

/// @nodoc
class _$SmarteamInitErrorInitCopyWithImpl<$Res>
    extends _$SmarteamInitErrorCopyWithImpl<$Res>
    implements $SmarteamInitErrorInitCopyWith<$Res> {
  _$SmarteamInitErrorInitCopyWithImpl(
      SmarteamInitErrorInit _value, $Res Function(SmarteamInitErrorInit) _then)
      : super(_value, (v) => _then(v as SmarteamInitErrorInit));

  @override
  SmarteamInitErrorInit get _value => super._value as SmarteamInitErrorInit;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SmarteamInitErrorInit(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$SmarteamInitErrorInit implements SmarteamInitErrorInit {
  const _$SmarteamInitErrorInit(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'SmarteamInitError.init(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SmarteamInitErrorInit &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $SmarteamInitErrorInitCopyWith<SmarteamInitErrorInit> get copyWith =>
      _$SmarteamInitErrorInitCopyWithImpl<SmarteamInitErrorInit>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) init,
  }) {
    return init(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Error error)? init,
  }) {
    return init?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SmarteamInitErrorInit value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SmarteamInitErrorInit value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SmarteamInitErrorInit value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SmarteamInitErrorInit implements SmarteamInitError {
  const factory SmarteamInitErrorInit(Error error) = _$SmarteamInitErrorInit;

  @override
  Error get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SmarteamInitErrorInitCopyWith<SmarteamInitErrorInit> get copyWith =>
      throw _privateConstructorUsedError;
}
