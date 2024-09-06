part of 'parameters.dart';

@freezed
class LoginParameters with _$LoginParameters {
  const factory LoginParameters({
    required String email,
    required String password,
  }) = _LoginParameters;
}
