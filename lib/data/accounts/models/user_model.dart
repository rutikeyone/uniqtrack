part of 'models.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String? userId,
    required String? name,
    required String? email,
    required String? photo,
    @GenderConverter() required GenderModel? gender,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

}
