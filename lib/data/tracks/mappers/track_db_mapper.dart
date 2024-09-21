import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uniqtrack/data/app_database.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';

abstract interface class TrackDbMapper {
  TracksCompanion toCompanion(TrackModel track);

  TrackModel toModel(Track companion);
}

class TrackDbMapperImpl implements TrackDbMapper {
  final JsonConverter<List<MemoryModel>?, List?> _memoriesConverter;
  final JsonConverter<List<PositionDataModel>?, List?> _positionsDataConverter;

  const TrackDbMapperImpl({
    required JsonConverter<List<MemoryModel>?, List?> memoriesConverter,
    required JsonConverter<List<PositionDataModel>?, List?>
        positionsDataConverter,
  })  : _memoriesConverter = memoriesConverter,
        _positionsDataConverter = positionsDataConverter;

  @override
  TracksCompanion toCompanion(TrackModel track) {
    final memoriesModel = track.memories;
    final jsonMemories = memoriesModel != null
        ? jsonEncode(_memoriesConverter.toJson(memoriesModel))
        : null;

    final positionsDataModel = track.positions;
    final jsonPositions = positionsDataModel != null
        ? jsonEncode(_positionsDataConverter.toJson(positionsDataModel))
        : null;

    return TracksCompanion(
      creatorId: Value(track.creatorId),
      dateCreated: Value(track.dateCreated),
      name: Value(track.name),
      comment: Value(track.comment),
      distance: Value(track.distance),
      duration: Value(track.duration),
      averageSpeed: Value(track.averageSpeed),
      maxAltitude: Value(track.maxAltitude),
      memories: Value(jsonMemories),
      positions: Value(jsonPositions),
    );
  }

  @override
  TrackModel toModel(Track companion) {
    final memoriesValue = companion.memories;
    final jsonMemories =
        memoriesValue != null ? jsonDecode(memoriesValue) as List? : null;

    final memories =
        jsonMemories != null ? _memoriesConverter.fromJson(jsonMemories) : null;

    final positionsDataModel = companion.positions;
    final jsonPositions = positionsDataModel != null
        ? jsonDecode(positionsDataModel) as List?
        : null;

    final positions = jsonPositions != null
        ? _positionsDataConverter.fromJson(jsonPositions)
        : null;

    return TrackModel(
      id: null,
      trackId: companion.trackId,
      creatorId: companion.creatorId,
      dateCreated: companion.dateCreated,
      name: companion.name,
      comment: companion.comment,
      distance: companion.distance,
      duration: companion.duration,
      averageSpeed: companion.averageSpeed,
      maxAltitude: companion.maxAltitude,
      memories: memories,
      positions: positions,
    );
  }
}
