import 'package:flutter_smarteam/smarteam/login/domain/validators/length_string_validator.dart';

class UsernameAndPasswordValidators {
  final usernameValidator = LengthStringValidator(3);
  final passwordValidator = LengthStringValidator(4);
}