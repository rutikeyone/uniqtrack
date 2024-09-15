part of 'providers.dart';

@Riverpod(dependencies: [])
PositionMapper positionMapper(PositionMapperRef ref) {
  return PositionMapperImpl();
}

@Riverpod(dependencies: [positionMapper])
PositionDataMapper positionDataMapper(PositionDataMapperRef ref) {
  final positionMapper = ref.watch(positionMapperProvider);

  return PositionDataMapperImpl(positionMapper: positionMapper);
}

@Riverpod(dependencies: [positionMapper])
MemoryMapper memoryMapper(MemoryMapperRef ref) {
  final positionMapper = ref.watch(positionMapperProvider);

  return MemoryMapperImpl(positionMapper: positionMapper);
}

@Riverpod(dependencies: [memoryMapper, positionDataMapper])
TrackMapper trackMapper(TrackMapperRef ref) {
  final memoryMapper = ref.watch(memoryMapperProvider);
  final positionDataMapper = ref.watch(positionDataMapperProvider);

  return TrackMapperImpl(
    memoryMapper: memoryMapper,
    positionDataMapper: positionDataMapper,
  );
}
