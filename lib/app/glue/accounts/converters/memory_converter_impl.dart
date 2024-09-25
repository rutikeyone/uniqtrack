import 'dart:convert';

import 'package:uniqtrack/features/tracks/domain/converters/memory_converter.dart';
import 'package:uniqtrack/features/tracks/domain/converters/position_converter.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

class MemoryConverterImpl implements MemoryConverter {
  final PositionConverter _positionConverter;

  final _idArgument = 'id';
  final _nameArgument = 'name';
  final _commentArgument = 'comment';
  final _photosArgument = 'photos';
  final _positionArgument = 'position';
  final _creatorIdArguments = "creatorId";

  const MemoryConverterImpl({
    required PositionConverter positionConverter,
  }) : _positionConverter = positionConverter;

  @override
  Memory? fromJson(Map<String, String> json) {
    try {
      final id = json[_idArgument];
      final name = json[_nameArgument];
      final comment = json[_commentArgument];
      final jsonPhotos = json[_photosArgument];
      final positionData = json[_positionArgument];
      final creatorId = json[_creatorIdArguments];

      final photos = jsonPhotos != null
          ? (jsonDecode(jsonPhotos) as List?)
              ?.map((item) => item.toString())
              .toList()
          : null;

      final position = positionData != null
          ? () {
              final jsonDecoded =
                  jsonDecode(positionData) as Map<String, dynamic>?;
              final data = jsonDecoded
                  ?.map((key, item) => MapEntry(key, item.toString()));

              return data != null ? _positionConverter.fromJson(data) : null;
            }.call()
          : null;

      if (id == null &&
          name == null &&
          comment == null &&
          photos == null &&
          position == null) {
        return null;
      }

      return Memory(
        id: id,
        creatorId: creatorId,
        name: name,
        comment: comment,
        photos: photos,
        position: position,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, String> toJson(Memory? object) {
    try {
      if (object == null) {
        return {};
      }

      Map<String, String> result = {};

      final id = object.id;
      final creatorId = object.creatorId;
      final name = object.name;
      final comment = object.comment;
      final photos = object.photos;
      final position = object.position;

      if (id != null) {
        result.addAll({
          _idArgument: id,
        });
      }

      if (creatorId != null) {
        result.addAll({
          _creatorIdArguments: creatorId,
        });
      }

      if (name != null) {
        result.addAll({
          _nameArgument: name,
        });
      }

      if (comment != null) {
        result.addAll({
          _commentArgument: comment,
        });
      }

      if (photos != null) {
        final data = jsonEncode(photos);
        result.addAll({
          _photosArgument: data,
        });
      }

      if (position != null) {
        final positionMap = _positionConverter.toJson(position);
        final data = jsonEncode(positionMap);

        result.addAll({
          _positionArgument: data,
        });
      }

      return result;
    } catch (e) {
      return {};
    }
  }
}
