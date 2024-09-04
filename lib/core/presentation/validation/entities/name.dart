import 'package:formz/formz.dart';
import 'package:uniqtrack/core/presentation/validation/regexp_pattern.dart';

enum NameValidationError { incorrectName }

class Name extends FormzInput<String, NameValidationError> {
  const Name.pure() : super.pure('');

  const Name.dirty([super.value = '']) : super.dirty();

  @override
  NameValidationError? validator(String? value) {
    final isValidate =
        value != null && value.isNotEmpty && RegexpPattern.name.hasMatch(value);

    if (isValidate) {
      return null;
    }

    return NameValidationError.incorrectName;
  }
}
