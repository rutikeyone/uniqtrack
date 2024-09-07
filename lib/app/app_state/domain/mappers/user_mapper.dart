import 'package:uniqtrack/app/app_state/domain/entities/user.dart';
import 'package:uniqtrack/app/glue/register/mappers/gender_mapper.dart';
import 'package:uniqtrack/data/accounts/models/user_model.dart';

abstract interface class UserMapper {
  User toUser(UserModel userModel);

  UserModel toUserModel(User user);
}

class UserMapperImpl implements UserMapper {
  final GenderMapper _genderMapper;

  const UserMapperImpl({
    required GenderMapper genderMapper,
  }) : _genderMapper = genderMapper;

  @override
  User toUser(UserModel userModel) {
    final userGender = userModel.gender;
    final gender =
        userGender != null ? _genderMapper.toGender(userGender) : null;

    return User(
      name: userModel.name,
      photo: userModel.photo,
      email: userModel.email,
      gender: gender,
    );
  }

  @override
  UserModel toUserModel(User user) {
    final gender = user.gender;

    final genderModel =
        gender != null ? _genderMapper.toGenderModel(gender) : null;

    return UserModel(
      name: user.name,
      email: user.email,
      photo: user.photo,
      gender: genderModel,
    );
  }
}