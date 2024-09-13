part of 'providers.dart';

@riverpod
UserMapperImpl userMapper(UserMapperRef ref) {
  final genderMapper = ref.watch(genderMapperProvider);

  return UserMapperImpl(genderMapper: genderMapper);
}

@riverpod
FileMapper fileMapper(FileMapperRef ref) {
  return FileMapperImpl();
}

@riverpod
GenderMapper genderMapper(GenderMapperRef ref) {
  return GenderMapperImpl();
}

