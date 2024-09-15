import 'package:uniqtrack/app/glue/tracks/mappers/memory_mapper.dart';
import 'package:uniqtrack/app/glue/tracks/mappers/position_data_mapper.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

abstract interface class TrackMapper {
  TrackModel toTrackModel(Track track);
}

class TrackMapperImpl implements TrackMapper {
  final PositionDataMapper _positionDataMapper;
  final MemoryMapper _memoryMapper;

  const TrackMapperImpl({
    required MemoryMapper memoryMapper,
    required PositionDataMapper positionDataMapper,
  })  : _positionDataMapper = positionDataMapper,
        _memoryMapper = memoryMapper;

  @override
  TrackModel toTrackModel(Track track) {
    final positionDataModels = track.positions
        ?.map((item) => _positionDataMapper.toPositionDataModel(item))
        .toList();

    final memoryModels = track.memories
        ?.map((item) => _memoryMapper.toMemoryModel(item))
        .toList();

    return TrackModel(
      id: track.id,
      creatorId: track.creatorId,
      positions: positionDataModels,
      distance: track.distance,
      duration: track.duration,
      averageSpeed: track.averageSpeed,
      maxAltitude: track.maxAltitude,
      memories: memoryModels,
    );
  }
}
