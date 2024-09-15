import 'package:uniqtrack/app/glue/accounts/mappers/gender_mapper.dart';
import 'package:uniqtrack/data/accounts/models/models.dart';
import 'package:uniqtrack/features/accounts/domain/entities/entities.dart';

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
      id: userModel.id,
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
      id: user.id,
      name: user.name,
      email: user.email,
      photo: user.photo,
      gender: genderModel,
    );
  }
}
