import 'package:freezed_annotation/freezed_annotation.dart';

part 'gender.freezed.dart';

@immutable
@freezed
class Gender with _$Gender {
  const factory Gender.male() = _MaleGender;
  const factory Gender.female() = _FemaleGender;
}