import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/data/repositories/accounts/models/file_model.dart';
import 'package:uniqtrack/data/repositories/accounts/models/gender_model.dart';

part 'register_parameters.freezed.dart';

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
