import 'package:flutter_smarteam/smarteam/login/domain/validators/string_validator.dart';

class LengthStringValidator implements StringValidator {
  LengthStringValidator(this.minLength);

  final int minLength;

  @override
  bool isValid(String value) => value.length >= minLength;
}
