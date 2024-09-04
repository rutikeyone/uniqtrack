import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_parameters.freezed.dart';

@freezed
class RegisterParameters with _$RegisterParameters {
  const factory RegisterParameters({
    required String name,
    required String email,
    required String password,
}) = _RegisterParameters;
}
