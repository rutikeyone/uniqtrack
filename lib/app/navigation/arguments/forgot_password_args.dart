part of 'args.dart';

@riverpod
ForgotPasswordArgsConverter forgotPasswordArgsConverter(
    ForgotPasswordArgsConverterRef ref) {
  return ForgotPasswordArgsConverterImpl();
}

abstract interface class ForgotPasswordArgsConverter
    implements JsonConverter<ForgotPasswordArgs?, Map<String, String>> {}

class ForgotPasswordArgsConverterImpl implements ForgotPasswordArgsConverter {
  final _emailArgument = "email";

  @override
  ForgotPasswordArgs? fromJson(Map<String, String> json) {
    try {
      final email = json[_emailArgument];

      if (email == null) {
        return null;
      }

      return ForgotPasswordArgs(email: email);
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, String> toJson(ForgotPasswordArgs? object) {
    try {
      if (object == null) {
        return {};
      }

      return {
        _emailArgument: object.email,
      };
    } catch (e) {
      return {};
    }
  }
}

@freezed
class ForgotPasswordArgs with _$ForgotPasswordArgs {
  const factory ForgotPasswordArgs({
    required String email,
  }) = _ForgotPasswordArgs;
}
