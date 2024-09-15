part of 'providers.dart';

@riverpod
PositionConverter positionConverter(PositionConverterRef ref) {
  return PositionConverterImpl();
}

@riverpod
PositionDataConverter positionDataConverter(PositionDataConverterRef ref) {
  final positionConverter = ref.watch(positionConverterProvider);

  return PositionDataConverterImpl(positionConverter: positionConverter);
}

@riverpod
MemoryConverter memoryConverter(MemoryConverterRef ref) {
  final positionConverter = ref.watch(positionConverterProvider);

  return MemoryConverterImpl(positionConverter: positionConverter);
}

@riverpod
TrackConverter trackConverter(TrackConverterRef ref) {
  final positionDataConverter = ref.watch(positionDataConverterProvider);
  final memoryConverter = ref.watch(memoryConverterProvider);

  return TrackConverterImpl(
    positionDataConverter: positionDataConverter,
    memoryConverter: memoryConverter,
  );
}
