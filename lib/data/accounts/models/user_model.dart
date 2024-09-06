import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/data/accounts/converters/gender_converter.dart';
import 'package:uniqtrack/data/accounts/models/gender_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String? name,
    required String? email,
    required String? photo,
    @GenderConverter() required GenderModel? gender,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

}
