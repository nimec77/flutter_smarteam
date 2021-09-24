// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'init_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InitEventTearOff {
  const _$InitEventTearOff();

  InitEventStarted initStarted() {
    return const InitEventStarted();
  }

  InitEventEnded initEnded() {
    return const InitEventEnded();
  }

  InitEventTimeUp initTimeUp() {
    return const InitEventTimeUp();
  }

  InitEventExited initExited() {
    return const InitEventExited();
  }
}

/// @nodoc
const $InitEvent = _$InitEventTearOff();

/// @nodoc
mixin _$InitEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initStarted,
    required TResult Function() initEnded,
    required TResult Function() initTimeUp,
    required TResult Function() initExited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initStarted,
    TResult Function()? initEnded,
    TResult Function()? initTimeUp,
    TResult Function()? initExited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initStarted,
    TResult Function()? initEnded,
    TResult Function()? initTimeUp,
    TResult Function()? initExited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEventStarted value) initStarted,
    required TResult Function(InitEventEnded value) initEnded,
    required TResult Function(InitEventTimeUp value) initTimeUp,
    required TResult Function(InitEventExited value) initExited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitEventStarted value)? initStarted,
    TResult Function(InitEventEnded value)? initEnded,
    TResult Function(InitEventTimeUp value)? initTimeUp,
    TResult Function(InitEventExited value)? initExited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEventStarted value)? initStarted,
    TResult Function(InitEventEnded value)? initEnded,
    TResult Function(InitEventTimeUp value)? initTimeUp,
    TResult Function(InitEventExited value)? initExited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitEventCopyWith<$Res> {
  factory $InitEventCopyWith(InitEvent value, $Res Function(InitEvent) then) =
      _$InitEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitEventCopyWithImpl<$Res> implements $InitEventCopyWith<$Res> {
  _$InitEventCopyWithImpl(this._value, this._then);

  final InitEvent _value;
  // ignore: unused_field
  final $Res Function(InitEvent) _then;
}

/// @nodoc
abstract class $InitEventStartedCopyWith<$Res> {
  factory $InitEventStartedCopyWith(
          InitEventStarted value, $Res Function(InitEventStarted) then) =
      _$InitEventStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitEventStartedCopyWithImpl<$Res> extends _$InitEventCopyWithImpl<$Res>
    implements $InitEventStartedCopyWith<$Res> {
  _$InitEventStartedCopyWithImpl(
      InitEventStarted _value, $Res Function(InitEventStarted) _then)
      : super(_value, (v) => _then(v as InitEventStarted));

  @override
  InitEventStarted get _value => super._value as InitEventStarted;
}

/// @nodoc

class _$InitEventStarted implements InitEventStarted {
  const _$InitEventStarted();

  @override
  String toString() {
    return 'InitEvent.initStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitEventStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initStarted,
    required TResult Function() initEnded,
    required TResult Function() initTimeUp,
    required TResult Function() initExited,
  }) {
    return initStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initStarted,
    TResult Function()? initEnded,
    TResult Function()? initTimeUp,
    TResult Function()? initExited,
  }) {
    return initStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initStarted,
    TResult Function()? initEnded,
    TResult Function()? initTimeUp,
    TResult Function()? initExited,
    required TResult orElse(),
  }) {
    if (initStarted != null) {
      return initStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEventStarted value) initStarted,
    required TResult Function(InitEventEnded value) initEnded,
    required TResult Function(InitEventTimeUp value) initTimeUp,
    required TResult Function(InitEventExited value) initExited,
  }) {
    return initStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitEventStarted value)? initStarted,
    TResult Function(InitEventEnded value)? initEnded,
    TResult Function(InitEventTimeUp value)? initTimeUp,
    TResult Function(InitEventExited value)? initExited,
  }) {
    return initStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEventStarted value)? initStarted,
    TResult Function(InitEventEnded value)? initEnded,
    TResult Function(InitEventTimeUp value)? initTimeUp,
    TResult Function(InitEventExited value)? initExited,
    required TResult orElse(),
  }) {
    if (initStarted != null) {
      return initStarted(this);
    }
    return orElse();
  }
}

abstract class InitEventStarted implements InitEvent {
  const factory InitEventStarted() = _$InitEventStarted;
}

/// @nodoc
abstract class $InitEventEndedCopyWith<$Res> {
  factory $InitEventEndedCopyWith(
          InitEventEnded value, $Res Function(InitEventEnded) then) =
      _$InitEventEndedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitEventEndedCopyWithImpl<$Res> extends _$InitEventCopyWithImpl<$Res>
    implements $InitEventEndedCopyWith<$Res> {
  _$InitEventEndedCopyWithImpl(
      InitEventEnded _value, $Res Function(InitEventEnded) _then)
      : super(_value, (v) => _then(v as InitEventEnded));

  @override
  InitEventEnded get _value => super._value as InitEventEnded;
}

/// @nodoc

class _$InitEventEnded implements InitEventEnded {
  const _$InitEventEnded();

  @override
  String toString() {
    return 'InitEvent.initEnded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitEventEnded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initStarted,
    required TResult Function() initEnded,
    required TResult Function() initTimeUp,
    required TResult Function() initExited,
  }) {
    return initEnded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initStarted,
    TResult Function()? initEnded,
    TResult Function()? initTimeUp,
    TResult Function()? initExited,
  }) {
    return initEnded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initStarted,
    TResult Function()? initEnded,
    TResult Function()? initTimeUp,
    TResult Function()? initExited,
    required TResult orElse(),
  }) {
    if (initEnded != null) {
      return initEnded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEventStarted value) initStarted,
    required TResult Function(InitEventEnded value) initEnded,
    required TResult Function(InitEventTimeUp value) initTimeUp,
    required TResult Function(InitEventExited value) initExited,
  }) {
    return initEnded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitEventStarted value)? initStarted,
    TResult Function(InitEventEnded value)? initEnded,
    TResult Function(InitEventTimeUp value)? initTimeUp,
    TResult Function(InitEventExited value)? initExited,
  }) {
    return initEnded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEventStarted value)? initStarted,
    TResult Function(InitEventEnded value)? initEnded,
    TResult Function(InitEventTimeUp value)? initTimeUp,
    TResult Function(InitEventExited value)? initExited,
    required TResult orElse(),
  }) {
    if (initEnded != null) {
      return initEnded(this);
    }
    return orElse();
  }
}

abstract class InitEventEnded implements InitEvent {
  const factory InitEventEnded() = _$InitEventEnded;
}

/// @nodoc
abstract class $InitEventTimeUpCopyWith<$Res> {
  factory $InitEventTimeUpCopyWith(
          InitEventTimeUp value, $Res Function(InitEventTimeUp) then) =
      _$InitEventTimeUpCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitEventTimeUpCopyWithImpl<$Res> extends _$InitEventCopyWithImpl<$Res>
    implements $InitEventTimeUpCopyWith<$Res> {
  _$InitEventTimeUpCopyWithImpl(
      InitEventTimeUp _value, $Res Function(InitEventTimeUp) _then)
      : super(_value, (v) => _then(v as InitEventTimeUp));

  @override
  InitEventTimeUp get _value => super._value as InitEventTimeUp;
}

/// @nodoc

class _$InitEventTimeUp implements InitEventTimeUp {
  const _$InitEventTimeUp();

  @override
  String toString() {
    return 'InitEvent.initTimeUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitEventTimeUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initStarted,
    required TResult Function() initEnded,
    required TResult Function() initTimeUp,
    required TResult Function() initExited,
  }) {
    return initTimeUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initStarted,
    TResult Function()? initEnded,
    TResult Function()? initTimeUp,
    TResult Function()? initExited,
  }) {
    return initTimeUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initStarted,
    TResult Function()? initEnded,
    TResult Function()? initTimeUp,
    TResult Function()? initExited,
    required TResult orElse(),
  }) {
    if (initTimeUp != null) {
      return initTimeUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEventStarted value) initStarted,
    required TResult Function(InitEventEnded value) initEnded,
    required TResult Function(InitEventTimeUp value) initTimeUp,
    required TResult Function(InitEventExited value) initExited,
  }) {
    return initTimeUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitEventStarted value)? initStarted,
    TResult Function(InitEventEnded value)? initEnded,
    TResult Function(InitEventTimeUp value)? initTimeUp,
    TResult Function(InitEventExited value)? initExited,
  }) {
    return initTimeUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEventStarted value)? initStarted,
    TResult Function(InitEventEnded value)? initEnded,
    TResult Function(InitEventTimeUp value)? initTimeUp,
    TResult Function(InitEventExited value)? initExited,
    required TResult orElse(),
  }) {
    if (initTimeUp != null) {
      return initTimeUp(this);
    }
    return orElse();
  }
}

abstract class InitEventTimeUp implements InitEvent {
  const factory InitEventTimeUp() = _$InitEventTimeUp;
}

/// @nodoc
abstract class $InitEventExitedCopyWith<$Res> {
  factory $InitEventExitedCopyWith(
          InitEventExited value, $Res Function(InitEventExited) then) =
      _$InitEventExitedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitEventExitedCopyWithImpl<$Res> extends _$InitEventCopyWithImpl<$Res>
    implements $InitEventExitedCopyWith<$Res> {
  _$InitEventExitedCopyWithImpl(
      InitEventExited _value, $Res Function(InitEventExited) _then)
      : super(_value, (v) => _then(v as InitEventExited));

  @override
  InitEventExited get _value => super._value as InitEventExited;
}

/// @nodoc

class _$InitEventExited implements InitEventExited {
  const _$InitEventExited();

  @override
  String toString() {
    return 'InitEvent.initExited()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitEventExited);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initStarted,
    required TResult Function() initEnded,
    required TResult Function() initTimeUp,
    required TResult Function() initExited,
  }) {
    return initExited();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initStarted,
    TResult Function()? initEnded,
    TResult Function()? initTimeUp,
    TResult Function()? initExited,
  }) {
    return initExited?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initStarted,
    TResult Function()? initEnded,
    TResult Function()? initTimeUp,
    TResult Function()? initExited,
    required TResult orElse(),
  }) {
    if (initExited != null) {
      return initExited();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEventStarted value) initStarted,
    required TResult Function(InitEventEnded value) initEnded,
    required TResult Function(InitEventTimeUp value) initTimeUp,
    required TResult Function(InitEventExited value) initExited,
  }) {
    return initExited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitEventStarted value)? initStarted,
    TResult Function(InitEventEnded value)? initEnded,
    TResult Function(InitEventTimeUp value)? initTimeUp,
    TResult Function(InitEventExited value)? initExited,
  }) {
    return initExited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEventStarted value)? initStarted,
    TResult Function(InitEventEnded value)? initEnded,
    TResult Function(InitEventTimeUp value)? initTimeUp,
    TResult Function(InitEventExited value)? initExited,
    required TResult orElse(),
  }) {
    if (initExited != null) {
      return initExited(this);
    }
    return orElse();
  }
}

abstract class InitEventExited implements InitEvent {
  const factory InitEventExited() = _$InitEventExited;
}

/// @nodoc
class _$InitStateTearOff {
  const _$InitStateTearOff();

  InitStateNotInit notInit() {
    return const InitStateNotInit();
  }

  InitStateInProgress initInProgress(double progress) {
    return InitStateInProgress(
      progress,
    );
  }

  InitStateSuccess initSuccess(
      {required AppDatabase appDatabase,
      required SmarteamUserRepository smarteamUserRepository,
      required CryptoRepository cryptoRepository}) {
    return InitStateSuccess(
      appDatabase: appDatabase,
      smarteamUserRepository: smarteamUserRepository,
      cryptoRepository: cryptoRepository,
    );
  }

  InitStateFailure initFailure(Error error) {
    return InitStateFailure(
      error,
    );
  }

  InitStateTimeout initTimeout() {
    return const InitStateTimeout();
  }
}

/// @nodoc
const $InitState = _$InitStateTearOff();

/// @nodoc
mixin _$InitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInit,
    required TResult Function(double progress) initInProgress,
    required TResult Function(
            AppDatabase appDatabase,
            SmarteamUserRepository smarteamUserRepository,
            CryptoRepository cryptoRepository)
        initSuccess,
    required TResult Function(Error error) initFailure,
    required TResult Function() initTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInit,
    TResult Function(double progress)? initInProgress,
    TResult Function(
            AppDatabase appDatabase,
            SmarteamUserRepository smarteamUserRepository,
            CryptoRepository cryptoRepository)?
        initSuccess,
    TResult Function(Error error)? initFailure,
    TResult Function()? initTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInit,
    TResult Function(double progress)? initInProgress,
    TResult Function(
            AppDatabase appDatabase,
            SmarteamUserRepository smarteamUserRepository,
            CryptoRepository cryptoRepository)?
        initSuccess,
    TResult Function(Error error)? initFailure,
    TResult Function()? initTimeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitStateNotInit value) notInit,
    required TResult Function(InitStateInProgress value) initInProgress,
    required TResult Function(InitStateSuccess value) initSuccess,
    required TResult Function(InitStateFailure value) initFailure,
    required TResult Function(InitStateTimeout value) initTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitStateNotInit value)? notInit,
    TResult Function(InitStateInProgress value)? initInProgress,
    TResult Function(InitStateSuccess value)? initSuccess,
    TResult Function(InitStateFailure value)? initFailure,
    TResult Function(InitStateTimeout value)? initTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitStateNotInit value)? notInit,
    TResult Function(InitStateInProgress value)? initInProgress,
    TResult Function(InitStateSuccess value)? initSuccess,
    TResult Function(InitStateFailure value)? initFailure,
    TResult Function(InitStateTimeout value)? initTimeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitStateCopyWith<$Res> {
  factory $InitStateCopyWith(InitState value, $Res Function(InitState) then) =
      _$InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStateCopyWithImpl<$Res> implements $InitStateCopyWith<$Res> {
  _$InitStateCopyWithImpl(this._value, this._then);

  final InitState _value;
  // ignore: unused_field
  final $Res Function(InitState) _then;
}

/// @nodoc
abstract class $InitStateNotInitCopyWith<$Res> {
  factory $InitStateNotInitCopyWith(
          InitStateNotInit value, $Res Function(InitStateNotInit) then) =
      _$InitStateNotInitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStateNotInitCopyWithImpl<$Res> extends _$InitStateCopyWithImpl<$Res>
    implements $InitStateNotInitCopyWith<$Res> {
  _$InitStateNotInitCopyWithImpl(
      InitStateNotInit _value, $Res Function(InitStateNotInit) _then)
      : super(_value, (v) => _then(v as InitStateNotInit));

  @override
  InitStateNotInit get _value => super._value as InitStateNotInit;
}

/// @nodoc

class _$InitStateNotInit implements InitStateNotInit {
  const _$InitStateNotInit();

  @override
  String toString() {
    return 'InitState.notInit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitStateNotInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInit,
    required TResult Function(double progress) initInProgress,
    required TResult Function(
            AppDatabase appDatabase,
            SmarteamUserRepository smarteamUserRepository,
            CryptoRepository cryptoRepository)
        initSuccess,
    required TResult Function(Error error) initFailure,
    required TResult Function() initTimeout,
  }) {
    return notInit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInit,
    TResult Function(double progress)? initInProgress,
    TResult Function(
            AppDatabase appDatabase,
            SmarteamUserRepository smarteamUserRepository,
            CryptoRepository cryptoRepository)?
        initSuccess,
    TResult Function(Error error)? initFailure,
    TResult Function()? initTimeout,
  }) {
    return notInit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInit,
    TResult Function(double progress)? initInProgress,
    TResult Function(
            AppDatabase appDatabase,
            SmarteamUserRepository smarteamUserRepository,
            CryptoRepository cryptoRepository)?
        initSuccess,
    TResult Function(Error error)? initFailure,
    TResult Function()? initTimeout,
    required TResult orElse(),
  }) {
    if (notInit != null) {
      return notInit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitStateNotInit value) notInit,
    required TResult Function(InitStateInProgress value) initInProgress,
    required TResult Function(InitStateSuccess value) initSuccess,
    required TResult Function(InitStateFailure value) initFailure,
    required TResult Function(InitStateTimeout value) initTimeout,
  }) {
    return notInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitStateNotInit value)? notInit,
    TResult Function(InitStateInProgress value)? initInProgress,
    TResult Function(InitStateSuccess value)? initSuccess,
    TResult Function(InitStateFailure value)? initFailure,
    TResult Function(InitStateTimeout value)? initTimeout,
  }) {
    return notInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitStateNotInit value)? notInit,
    TResult Function(InitStateInProgress value)? initInProgress,
    TResult Function(InitStateSuccess value)? initSuccess,
    TResult Function(InitStateFailure value)? initFailure,
    TResult Function(InitStateTimeout value)? initTimeout,
    required TResult orElse(),
  }) {
    if (notInit != null) {
      return notInit(this);
    }
    return orElse();
  }
}

abstract class InitStateNotInit implements InitState {
  const factory InitStateNotInit() = _$InitStateNotInit;
}

/// @nodoc
abstract class $InitStateInProgressCopyWith<$Res> {
  factory $InitStateInProgressCopyWith(
          InitStateInProgress value, $Res Function(InitStateInProgress) then) =
      _$InitStateInProgressCopyWithImpl<$Res>;
  $Res call({double progress});
}

/// @nodoc
class _$InitStateInProgressCopyWithImpl<$Res>
    extends _$InitStateCopyWithImpl<$Res>
    implements $InitStateInProgressCopyWith<$Res> {
  _$InitStateInProgressCopyWithImpl(
      InitStateInProgress _value, $Res Function(InitStateInProgress) _then)
      : super(_value, (v) => _then(v as InitStateInProgress));

  @override
  InitStateInProgress get _value => super._value as InitStateInProgress;

  @override
  $Res call({
    Object? progress = freezed,
  }) {
    return _then(InitStateInProgress(
      progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$InitStateInProgress implements InitStateInProgress {
  const _$InitStateInProgress(this.progress);

  @override
  final double progress;

  @override
  String toString() {
    return 'InitState.initInProgress(progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitStateInProgress &&
            (identical(other.progress, progress) ||
                const DeepCollectionEquality()
                    .equals(other.progress, progress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(progress);

  @JsonKey(ignore: true)
  @override
  $InitStateInProgressCopyWith<InitStateInProgress> get copyWith =>
      _$InitStateInProgressCopyWithImpl<InitStateInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInit,
    required TResult Function(double progress) initInProgress,
    required TResult Function(
            AppDatabase appDatabase,
            SmarteamUserRepository smarteamUserRepository,
            CryptoRepository cryptoRepository)
        initSuccess,
    required TResult Function(Error error) initFailure,
    required TResult Function() initTimeout,
  }) {
    return initInProgress(progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInit,
    TResult Function(double progress)? initInProgress,
    TResult Function(
            AppDatabase appDatabase,
            SmarteamUserRepository smarteamUserRepository,
            CryptoRepository cryptoRepository)?
        initSuccess,
    TResult Function(Error error)? initFailure,
    TResult Function()? initTimeout,
  }) {
    return initInProgress?.call(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInit,
    TResult Function(double progress)? initInProgress,
    TResult Function(
            AppDatabase appDatabase,
            SmarteamUserRepository smarteamUserRepository,
            CryptoRepository cryptoRepository)?
        initSuccess,
    TResult Function(Error error)? initFailure,
    TResult Function()? initTimeout,
    required TResult orElse(),
  }) {
    if (initInProgress != null) {
      return initInProgress(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitStateNotInit value) notInit,
    required TResult Function(InitStateInProgress value) initInProgress,
    required TResult Function(InitStateSuccess value) initSuccess,
    required TResult Function(InitStateFailure value) initFailure,
    required TResult Function(InitStateTimeout value) initTimeout,
  }) {
    return initInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitStateNotInit value)? notInit,
    TResult Function(InitStateInProgress value)? initInProgress,
    TResult Function(InitStateSuccess value)? initSuccess,
    TResult Function(InitStateFailure value)? initFailure,
    TResult Function(InitStateTimeout value)? initTimeout,
  }) {
    return initInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitStateNotInit value)? notInit,
    TResult Function(InitStateInProgress value)? initInProgress,
    TResult Function(InitStateSuccess value)? initSuccess,
    TResult Function(InitStateFailure value)? initFailure,
    TResult Function(InitStateTimeout value)? initTimeout,
    required TResult orElse(),
  }) {
    if (initInProgress != null) {
      return initInProgress(this);
    }
    return orElse();
  }
}

abstract class InitStateInProgress implements InitState {
  const factory InitStateInProgress(double progress) = _$InitStateInProgress;

  double get progress => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitStateInProgressCopyWith<InitStateInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitStateSuccessCopyWith<$Res> {
  factory $InitStateSuccessCopyWith(
          InitStateSuccess value, $Res Function(InitStateSuccess) then) =
      _$InitStateSuccessCopyWithImpl<$Res>;
  $Res call(
      {AppDatabase appDatabase,
      SmarteamUserRepository smarteamUserRepository,
      CryptoRepository cryptoRepository});
}

/// @nodoc
class _$InitStateSuccessCopyWithImpl<$Res> extends _$InitStateCopyWithImpl<$Res>
    implements $InitStateSuccessCopyWith<$Res> {
  _$InitStateSuccessCopyWithImpl(
      InitStateSuccess _value, $Res Function(InitStateSuccess) _then)
      : super(_value, (v) => _then(v as InitStateSuccess));

  @override
  InitStateSuccess get _value => super._value as InitStateSuccess;

  @override
  $Res call({
    Object? appDatabase = freezed,
    Object? smarteamUserRepository = freezed,
    Object? cryptoRepository = freezed,
  }) {
    return _then(InitStateSuccess(
      appDatabase: appDatabase == freezed
          ? _value.appDatabase
          : appDatabase // ignore: cast_nullable_to_non_nullable
              as AppDatabase,
      smarteamUserRepository: smarteamUserRepository == freezed
          ? _value.smarteamUserRepository
          : smarteamUserRepository // ignore: cast_nullable_to_non_nullable
              as SmarteamUserRepository,
      cryptoRepository: cryptoRepository == freezed
          ? _value.cryptoRepository
          : cryptoRepository // ignore: cast_nullable_to_non_nullable
              as CryptoRepository,
    ));
  }
}

/// @nodoc

class _$InitStateSuccess implements InitStateSuccess {
  const _$InitStateSuccess(
      {required this.appDatabase,
      required this.smarteamUserRepository,
      required this.cryptoRepository});

  @override
  final AppDatabase appDatabase;
  @override
  final SmarteamUserRepository smarteamUserRepository;
  @override
  final CryptoRepository cryptoRepository;

  @override
  String toString() {
    return 'InitState.initSuccess(appDatabase: $appDatabase, smarteamUserRepository: $smarteamUserRepository, cryptoRepository: $cryptoRepository)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitStateSuccess &&
            (identical(other.appDatabase, appDatabase) ||
                const DeepCollectionEquality()
                    .equals(other.appDatabase, appDatabase)) &&
            (identical(other.smarteamUserRepository, smarteamUserRepository) ||
                const DeepCollectionEquality().equals(
                    other.smarteamUserRepository, smarteamUserRepository)) &&
            (identical(other.cryptoRepository, cryptoRepository) ||
                const DeepCollectionEquality()
                    .equals(other.cryptoRepository, cryptoRepository)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appDatabase) ^
      const DeepCollectionEquality().hash(smarteamUserRepository) ^
      const DeepCollectionEquality().hash(cryptoRepository);

  @JsonKey(ignore: true)
  @override
  $InitStateSuccessCopyWith<InitStateSuccess> get copyWith =>
      _$InitStateSuccessCopyWithImpl<InitStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInit,
    required TResult Function(double progress) initInProgress,
    required TResult Function(
            AppDatabase appDatabase,
            SmarteamUserRepository smarteamUserRepository,
            CryptoRepository cryptoRepository)
        initSuccess,
    required TResult Function(Error error) initFailure,
    required TResult Function() initTimeout,
  }) {
    return initSuccess(appDatabase, smarteamUserRepository, cryptoRepository);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInit,
    TResult Function(double progress)? initInProgress,
    TResult Function(
            AppDatabase appDatabase,
            SmarteamUserRepository smarteamUserRepository,
            CryptoRepository cryptoRepository)?
        initSuccess,
    TResult Function(Error error)? initFailure,
    TResult Function()? initTimeout,
  }) {
    return initSuccess?.call(
        appDatabase, smarteamUserRepository, cryptoRepository);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInit,
    TResult Function(double progress)? initInProgress,
    TResult Function(
            AppDatabase appDatabase,
            SmarteamUserRepository smarteamUserRepository,
            CryptoRepository cryptoRepository)?
        initSuccess,
    TResult Function(Error error)? initFailure,
    TResult Function()? initTimeout,
    required TResult orElse(),
  }) {
    if (initSuccess != null) {
      return initSuccess(appDatabase, smarteamUserRepository, cryptoRepository);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitStateNotInit value) notInit,
    required TResult Function(InitStateInProgress value) initInProgress,
    required TResult Function(InitStateSuccess value) initSuccess,
    required TResult Function(InitStateFailure value) initFailure,
    required TResult Function(InitStateTimeout value) initTimeout,
  }) {
    return initSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitStateNotInit value)? notInit,
    TResult Function(InitStateInProgress value)? initInProgress,
    TResult Function(InitStateSuccess value)? initSuccess,
    TResult Function(InitStateFailure value)? initFailure,
    TResult Function(InitStateTimeout value)? initTimeout,
  }) {
    return initSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitStateNotInit value)? notInit,
    TResult Function(InitStateInProgress value)? initInProgress,
    TResult Function(InitStateSuccess value)? initSuccess,
    TResult Function(InitStateFailure value)? initFailure,
    TResult Function(InitStateTimeout value)? initTimeout,
    required TResult orElse(),
  }) {
    if (initSuccess != null) {
      return initSuccess(this);
    }
    return orElse();
  }
}

abstract class InitStateSuccess implements InitState {
  const factory InitStateSuccess(
      {required AppDatabase appDatabase,
      required SmarteamUserRepository smarteamUserRepository,
      required CryptoRepository cryptoRepository}) = _$InitStateSuccess;

  AppDatabase get appDatabase => throw _privateConstructorUsedError;
  SmarteamUserRepository get smarteamUserRepository =>
      throw _privateConstructorUsedError;
  CryptoRepository get cryptoRepository => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitStateSuccessCopyWith<InitStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitStateFailureCopyWith<$Res> {
  factory $InitStateFailureCopyWith(
          InitStateFailure value, $Res Function(InitStateFailure) then) =
      _$InitStateFailureCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class _$InitStateFailureCopyWithImpl<$Res> extends _$InitStateCopyWithImpl<$Res>
    implements $InitStateFailureCopyWith<$Res> {
  _$InitStateFailureCopyWithImpl(
      InitStateFailure _value, $Res Function(InitStateFailure) _then)
      : super(_value, (v) => _then(v as InitStateFailure));

  @override
  InitStateFailure get _value => super._value as InitStateFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(InitStateFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$InitStateFailure implements InitStateFailure {
  const _$InitStateFailure(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'InitState.initFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitStateFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $InitStateFailureCopyWith<InitStateFailure> get copyWith =>
      _$InitStateFailureCopyWithImpl<InitStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInit,
    required TResult Function(double progress) initInProgress,
    required TResult Function(
            AppDatabase appDatabase,
            SmarteamUserRepository smarteamUserRepository,
            CryptoRepository cryptoRepository)
        initSuccess,
    required TResult Function(Error error) initFailure,
    required TResult Function() initTimeout,
  }) {
    return initFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInit,
    TResult Function(double progress)? initInProgress,
    TResult Function(
            AppDatabase appDatabase,
            SmarteamUserRepository smarteamUserRepository,
            CryptoRepository cryptoRepository)?
        initSuccess,
    TResult Function(Error error)? initFailure,
    TResult Function()? initTimeout,
  }) {
    return initFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInit,
    TResult Function(double progress)? initInProgress,
    TResult Function(
            AppDatabase appDatabase,
            SmarteamUserRepository smarteamUserRepository,
            CryptoRepository cryptoRepository)?
        initSuccess,
    TResult Function(Error error)? initFailure,
    TResult Function()? initTimeout,
    required TResult orElse(),
  }) {
    if (initFailure != null) {
      return initFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitStateNotInit value) notInit,
    required TResult Function(InitStateInProgress value) initInProgress,
    required TResult Function(InitStateSuccess value) initSuccess,
    required TResult Function(InitStateFailure value) initFailure,
    required TResult Function(InitStateTimeout value) initTimeout,
  }) {
    return initFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitStateNotInit value)? notInit,
    TResult Function(InitStateInProgress value)? initInProgress,
    TResult Function(InitStateSuccess value)? initSuccess,
    TResult Function(InitStateFailure value)? initFailure,
    TResult Function(InitStateTimeout value)? initTimeout,
  }) {
    return initFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitStateNotInit value)? notInit,
    TResult Function(InitStateInProgress value)? initInProgress,
    TResult Function(InitStateSuccess value)? initSuccess,
    TResult Function(InitStateFailure value)? initFailure,
    TResult Function(InitStateTimeout value)? initTimeout,
    required TResult orElse(),
  }) {
    if (initFailure != null) {
      return initFailure(this);
    }
    return orElse();
  }
}

abstract class InitStateFailure implements InitState {
  const factory InitStateFailure(Error error) = _$InitStateFailure;

  Error get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitStateFailureCopyWith<InitStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitStateTimeoutCopyWith<$Res> {
  factory $InitStateTimeoutCopyWith(
          InitStateTimeout value, $Res Function(InitStateTimeout) then) =
      _$InitStateTimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStateTimeoutCopyWithImpl<$Res> extends _$InitStateCopyWithImpl<$Res>
    implements $InitStateTimeoutCopyWith<$Res> {
  _$InitStateTimeoutCopyWithImpl(
      InitStateTimeout _value, $Res Function(InitStateTimeout) _then)
      : super(_value, (v) => _then(v as InitStateTimeout));

  @override
  InitStateTimeout get _value => super._value as InitStateTimeout;
}

/// @nodoc

class _$InitStateTimeout implements InitStateTimeout {
  const _$InitStateTimeout();

  @override
  String toString() {
    return 'InitState.initTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitStateTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInit,
    required TResult Function(double progress) initInProgress,
    required TResult Function(
            AppDatabase appDatabase,
            SmarteamUserRepository smarteamUserRepository,
            CryptoRepository cryptoRepository)
        initSuccess,
    required TResult Function(Error error) initFailure,
    required TResult Function() initTimeout,
  }) {
    return initTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInit,
    TResult Function(double progress)? initInProgress,
    TResult Function(
            AppDatabase appDatabase,
            SmarteamUserRepository smarteamUserRepository,
            CryptoRepository cryptoRepository)?
        initSuccess,
    TResult Function(Error error)? initFailure,
    TResult Function()? initTimeout,
  }) {
    return initTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInit,
    TResult Function(double progress)? initInProgress,
    TResult Function(
            AppDatabase appDatabase,
            SmarteamUserRepository smarteamUserRepository,
            CryptoRepository cryptoRepository)?
        initSuccess,
    TResult Function(Error error)? initFailure,
    TResult Function()? initTimeout,
    required TResult orElse(),
  }) {
    if (initTimeout != null) {
      return initTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitStateNotInit value) notInit,
    required TResult Function(InitStateInProgress value) initInProgress,
    required TResult Function(InitStateSuccess value) initSuccess,
    required TResult Function(InitStateFailure value) initFailure,
    required TResult Function(InitStateTimeout value) initTimeout,
  }) {
    return initTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitStateNotInit value)? notInit,
    TResult Function(InitStateInProgress value)? initInProgress,
    TResult Function(InitStateSuccess value)? initSuccess,
    TResult Function(InitStateFailure value)? initFailure,
    TResult Function(InitStateTimeout value)? initTimeout,
  }) {
    return initTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitStateNotInit value)? notInit,
    TResult Function(InitStateInProgress value)? initInProgress,
    TResult Function(InitStateSuccess value)? initSuccess,
    TResult Function(InitStateFailure value)? initFailure,
    TResult Function(InitStateTimeout value)? initTimeout,
    required TResult orElse(),
  }) {
    if (initTimeout != null) {
      return initTimeout(this);
    }
    return orElse();
  }
}

abstract class InitStateTimeout implements InitState {
  const factory InitStateTimeout() = _$InitStateTimeout;
}
