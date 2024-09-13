part of 'entities.dart';

@freezed
class User with _$User {
  const factory User({
    required String? name,
    required String? photo,
    required String? email,
    required Gender? gender,
  }) = _User;
}
