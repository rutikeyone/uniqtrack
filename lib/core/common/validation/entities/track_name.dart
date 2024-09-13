import 'package:formz/formz.dart';

enum TrackNameValidationError { incorrectTrackName }

class TrackName extends FormzInput<String, TrackNameValidationError> {
  const TrackName.pure() : super.pure('');

  const TrackName.dirty([super.value = '']) : super.dirty();

  @override
  TrackNameValidationError? validator(String value) {
    final maxLength = 150;
    final isValidate = value.isNotEmpty && value.length <= maxLength;

    if (isValidate) {
      return null;
    }

    return TrackNameValidationError.incorrectTrackName;
  }
}
