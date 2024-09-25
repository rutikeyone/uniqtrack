part of 'args.dart';

@riverpod
AddOrEditMemoryArgsConverter addOrEditMemoryArgsConverter(
    AddOrEditMemoryArgsConverterRef ref) {
  final positionConverter = ref.watch(positionConverterProvider);
  final memoryConverter = ref.watch(memoryConverterProvider);
  final trackConverter = ref.watch(trackConverterProvider);

  return AddOrEditMemoryArgsConverterImpl(
    positionConverter: positionConverter,
    memoryConverter: memoryConverter,
    trackConverter: trackConverter,
  );
}

abstract interface class AddOrEditMemoryArgsConverter
    implements JsonConverter<AddOrEditMemoryArgs?, Map<String, String>> {}

class AddOrEditMemoryArgsConverterImpl implements AddOrEditMemoryArgsConverter {
  final PositionConverter _positionConverter;
  final MemoryConverter _memoryConverter;
  final TrackConverter _trackConverter;

  final _positionArgument = "position";
  final _memoryArgument = "memory";
  final _trackArguments = "track";

  const AddOrEditMemoryArgsConverterImpl({
    required PositionConverter positionConverter,
    required MemoryConverter memoryConverter,
    required TrackConverter trackConverter,
  })  : _positionConverter = positionConverter,
        _memoryConverter = memoryConverter,
        _trackConverter = trackConverter;

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

      final track = () {
        final jsonTrack = json[_trackArguments];
        if (jsonTrack == null || jsonTrack.isEmpty) {
          return null;
        }

        final jsonTrackDecoded = jsonDecode(jsonTrack) as Map<String, dynamic>?;
        if (jsonTrackDecoded == null) {
          return null;
        }

        final data =
            jsonTrackDecoded.map((key, item) => MapEntry(key, item.toString()));

        return _trackConverter.fromJson(data);
      }.call();

      if (position == null && memory == null) {
        return null;
      }

      return AddOrEditMemoryArgs(
        position: position,
        memory: memory,
        track: track,
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
      final track = object?.track;

      if (position == null && memory == null) {
        return {};
      }

      final jsonPosition = jsonEncode(
        _positionConverter.toJson(position),
      );

      final jsonMemory = jsonEncode(
        _memoryConverter.toJson(memory),
      );

      final result = {
        _positionArgument: jsonPosition,
        _memoryArgument: jsonMemory,
      };

      if (track != null) {
        final jsonTrack = jsonEncode(_trackConverter.toJson(track));

        result.addAll({
          _trackArguments: jsonTrack,
        });
      }

      return result;
    } catch (e) {
      return {};
    }
  }
}

@freezed
class AddOrEditMemoryArgs with _$AddOrEditMemoryArgs {
  const factory AddOrEditMemoryArgs({
    required Position? position,
    required Track? track,
    required Memory? memory,
  }) = _AddOrEditMemoryArgs;
}
