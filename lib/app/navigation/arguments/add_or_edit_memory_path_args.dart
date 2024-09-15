part of 'args.dart';

@riverpod
AddOrEditMemoryArgsConverter addOrEditMemoryArgsConverter(
    AddOrEditMemoryArgsConverterRef ref) {
  final positionConverter = ref.watch(positionConverterProvider);

  return AddOrEditMemoryArgsConverterImpl(
    positionConverter: positionConverter,
  );
}

abstract interface class AddOrEditMemoryArgsConverter
    implements JsonConverter<AddOrEditMemoryArgs?, Map<String, String>> {}

class AddOrEditMemoryArgsConverterImpl implements AddOrEditMemoryArgsConverter {
  final PositionConverter _positionConverter;

  final _positionArgument = "position";

  const AddOrEditMemoryArgsConverterImpl({
    required PositionConverter positionConverter,
  }) : _positionConverter = positionConverter;

  @override
  AddOrEditMemoryArgs? fromJson(Map<String, String> json) {
    try {
      final jsonPosition = json[_positionArgument];
      final position = jsonPosition != null
          ? () {
              final data = json.map((key, item) {
                return MapEntry(key, item.toString());
              });
              return _positionConverter.fromJson(data);
            }.call()
          : null;

      if (position == null) {
        return null;
      }

      return AddOrEditMemoryArgs(
        position: position,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, String> toJson(AddOrEditMemoryArgs? object) {
    try {
      if (object == null) {
        return {};
      }
      final jsonPosition = jsonEncode(
        _positionConverter.toJson(object.position),
      );

      return {
        _positionArgument: jsonPosition,
      };
    } catch (e) {
      return {};
    }
  }
}

@freezed
class AddOrEditMemoryArgs with _$AddOrEditMemoryArgs {
  const factory AddOrEditMemoryArgs({
    required Position? position,
  }) = _AddOrEditMemoryArgs;
}
