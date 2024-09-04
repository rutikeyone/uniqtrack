import 'package:formz/formz.dart';
import 'package:uniqtrack/core/presentation/validation/regexp_pattern.dart';

enum EmailValidationError { incorrectEmail }

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');

  const Email.dirty([super.value = '']) : super.dirty();

  @override
  EmailValidationError? validator(String? value) {
    final isValidate = value != null &&
        value.isNotEmpty &&
        RegexpPattern.email.hasMatch(value);

    if (isValidate) {
      return null;
    }

    return EmailValidationError.incorrectEmail;
  }
}
