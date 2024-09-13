part of 'parameters.dart';

@freezed
class LoginDataParameters with _$LoginDataParameters {
  const factory LoginDataParameters({
    required String email,
    required String password,
  }) = _LoginDataParameters;
}
