import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/glue/record_track/mappers/position_mapper.dart';

part 'position_mapper_provider.g.dart';

@Riverpod(dependencies: [])
PositionMapper positionMapper(PositionMapperRef ref) {
  return PositionMapperImpl();
}