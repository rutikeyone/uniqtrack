part of 'args.dart';

@riverpod
AddOrEditMemoryArgsConverter addOrEditMemoryArgsConverter(
    AddOrEditMemoryArgsConverterRef ref) {
  final positionConverter = ref.watch(positionConverterProvider);
  final memoryConverter = ref.watch(memoryConverterProvider);

  return AddOrEditMemoryArgsConverterImpl(
    positionConverter: positionConverter,
    memoryConverter: memoryConverter,
  );
}

abstract interface class AddOrEditMemoryArgsConverter
    implements JsonConverter<AddOrEditMemoryArgs?, Map<String, String>> {}

class AddOrEditMemoryArgsConverterImpl implements AddOrEditMemoryArgsConverter {
  final PositionConverter _positionConverter;
  final MemoryConverter _memoryConverter;

  final _positionArgument = "position";
  final _memoryArgument = "memory";

  const AddOrEditMemoryArgsConverterImpl({
    required PositionConverter positionConverter,
    required MemoryConverter memoryConverter,
  })  : _positionConverter = positionConverter,
        _memoryConverter = memoryConverter;

  @override
  AddOrEditMemoryArgs? fromJson(Map<String, String> json) {
    try {
      final position = () {
        final data = json.map((key, item) {
          return MapEntry(key, item.toString());
        });
        final jsonItem = data[_positionArgument];
        final itemData = jsonItem != null
            ? jsonDecode(jsonItem) as Map<String, dynamic>?
            : null;
        final finalItemData =
            itemData?.map((key, item) => MapEntry(key, item.toString())) ??
                <String, String>{};

        return _positionConverter.fromJson(finalItemData);
      }.call();

      final memory = () {
        final jsonMemory = json[_memoryArgument];
        if (jsonMemory == null) return null;

        final jsonMemoryDecoded =
            jsonDecode(jsonMemory) as Map<String, dynamic>?;

        if (jsonMemoryDecoded == null) {
          return null;
        }

        final data = jsonMemoryDecoded
            .map((key, item) => MapEntry(key, item.toString()));

        return _memoryConverter.fromJson(data);
      }.call();

      if (position == null && memory == null) {
        return null;
      }

      return AddOrEditMemoryArgs(
        position: position,
        memory: memory,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, String> toJson(AddOrEditMemoryArgs? object) {
    try {
      final position = object?.position;
      final memory = object?.memory;

      if (position == null && memory == null) {
        return {};
      }

      final jsonPosition = jsonEncode(
        _positionConverter.toJson(position),
      );

      final jsonMemory = jsonEncode(
        _memoryConverter.toJson(memory),
      );

      return {
        _positionArgument: jsonPosition,
        _memoryArgument: jsonMemory,
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
    required Memory? memory,
  }) = _AddOrEditMemoryArgs;
}
