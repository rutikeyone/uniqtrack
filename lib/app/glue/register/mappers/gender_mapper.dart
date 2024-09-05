import 'package:uniqtrack/data/repositories/accounts/models/gender_model.dart';
import 'package:uniqtrack/features/register/domain/entities/gender.dart';

abstract interface class GenderMapper {
  Gender toGender(GenderModel model);

  GenderModel toGenderModel(Gender gender);
}

class GenderMapperImpl implements GenderMapper {
  @override
  Gender toGender(GenderModel model) {
    return model.when(
      unknown: () => const Gender.unknown(),
      male: () => const Gender.male(),
      female: () => const Gender.female(),
    );
  }

  @override
  GenderModel toGenderModel(Gender gender) {
    return gender.when(
      unknown: () => const GenderModel.unknown(),
      male: () => const GenderModel.male(),
      female: () => const GenderModel.female(),
    );
  }
}
