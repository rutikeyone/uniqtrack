import 'package:uniqtrack/app/glue/tracks/mappers/position_mapper.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

abstract interface class PositionDataMapper {
  PositionDataModel toPositionDataModel(PositionData positionData);
}

class PositionDataMapperImpl implements PositionDataMapper {
  final PositionMapper _positionMapper;

  const PositionDataMapperImpl({
    required PositionMapper positionMapper,
  }) : _positionMapper = positionMapper;

  @override
  PositionDataModel toPositionDataModel(PositionData positionData) {
    final positions = positionData.positions
        ?.map((item) => _positionMapper.toPositionModel(item))
        .toList();

    return PositionDataModel(positions: positions);
  }
}
