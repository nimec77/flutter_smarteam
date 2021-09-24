import 'package:freezed_annotation/freezed_annotation.dart';

part 'smarteam_init_error.freezed.dart';

@freezed
class SmarteamInitError with _$SmarteamInitError {
  const factory SmarteamInitError.init(Error error) = SmarteamInitErrorInit;
}