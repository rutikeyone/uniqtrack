import 'package:formz/formz.dart';
import 'package:uniqtrack/core/presentation/validation/regexp_pattern.dart';

enum PasswordValidationError { incorrectPassword }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');

  const Password.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String? value) {
    final isValidate = value != null &&
        value.isNotEmpty &&
        RegexpPattern.password.hasMatch(value);

    if (isValidate) {
      return null;
    }

    return PasswordValidationError.incorrectPassword;
  }
}
