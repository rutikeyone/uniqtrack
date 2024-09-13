part of 'entities.dart';

@immutable
@freezed
class Gender with _$Gender {
  const Gender._();

  const factory Gender.unknown() = _UnknownGender;

  const factory Gender.male() = _MaleGender;

  const factory Gender.female() = _FemaleGender;
}
