import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/app_state/domain/mappers/user_mapper.dart';
import 'package:uniqtrack/app/glue/register/providers/register_provider.dart';

part 'user_mapper_provider.g.dart';

@riverpod
UserMapperImpl userMapper(UserMapperRef ref) {
  final genderMapper = ref.watch(genderMapperProvider);

  return UserMapperImpl(genderMapper: genderMapper);
}
