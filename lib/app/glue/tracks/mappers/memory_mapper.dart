import 'package:uniqtrack/app/glue/tracks/mappers/position_mapper.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

abstract interface class MemoryMapper {
  MemoryModel toMemoryModel(Memory memory);
}

class MemoryMapperImpl implements MemoryMapper {
  final PositionMapper _positionMapper;

  const MemoryMapperImpl({
    required PositionMapper positionMapper,
  }) : _positionMapper = positionMapper;

  @override
  MemoryModel toMemoryModel(Memory memory) {
    final positionEntity = memory.position;
    final positions = positionEntity != null
        ? _positionMapper.toPositionModel(positionEntity)
        : null;

    return MemoryModel(
      id: memory.id,
      name: memory.name,
      comment: memory.comment,
      uploadedPhotos: memory.uploadedPhotos,
      photos: memory.photos,
      position: positions,
    );
  }
}
