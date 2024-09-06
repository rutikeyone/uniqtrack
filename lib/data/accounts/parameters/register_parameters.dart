part of 'parameters.dart';

@immutable
@freezed
class RegisterParameters with _$RegisterParameters {
  const factory RegisterParameters({
    required String name,
    required String email,
    required String password,
    required GenderModel gender,
    required FileModel? file,
}) = _RegisterParameters;
}
