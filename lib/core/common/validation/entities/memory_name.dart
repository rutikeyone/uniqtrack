import 'package:formz/formz.dart';

enum MemoryNameValidationError { incorrectMemoryName }

class MemoryName extends FormzInput<String, MemoryNameValidationError> {
  const MemoryName.pure() : super.pure('');

  const MemoryName.dirty([super.value = '']) : super.dirty();

  @override
  MemoryNameValidationError? validator(String value) {
    final maxLength = 150;
    final isValidate = value.isNotEmpty && value.length <= maxLength;

    if (isValidate) {
      return null;
    }

    return MemoryNameValidationError.incorrectMemoryName;
  }
}
