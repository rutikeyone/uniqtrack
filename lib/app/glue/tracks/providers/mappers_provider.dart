part of 'providers.dart';

@Riverpod(dependencies: [])
PositionMapper positionMapper(PositionMapperRef ref) {
  return PositionMapperImpl();
}