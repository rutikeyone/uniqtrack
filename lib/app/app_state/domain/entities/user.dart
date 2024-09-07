import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/features/register/domain/entities/gender.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String? name,
    required String? photo,
    required String? email,
    required Gender? gender,
  }) = _User;
}
