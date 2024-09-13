import 'package:formz/formz.dart';

enum CommentValidationError { incorrectComment }

class Comment extends FormzInput<String, CommentValidationError> {
  const Comment.pure() : super.pure('');

  const Comment.dirty([super.value = '']) : super.dirty();

  @override
  CommentValidationError? validator(String value) {
    final maxLength = 300;
    final isValidate = value.isNotEmpty && value.length <= maxLength;

    if (isValidate) {
      return null;
    }

    return CommentValidationError.incorrectComment;
  }
}
