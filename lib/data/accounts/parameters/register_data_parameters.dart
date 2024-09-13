part of 'parameters.dart';

@immutable
@freezed
class RegisterDataParameters with _$RegisterDataParameters {
  const factory RegisterDataParameters({
    required String name,
    required String email,
    required String password,
    required GenderModel gender,
    required FileModel? file,
}) = _RegisterDataParameters;
}
