part of 'args.dart';

@riverpod
AddOrEditRecordTrackArgsConverter addOrEditRecordTrackConverter(
    AddOrEditRecordTrackConverterRef ref) {
  final trackConverter = ref.watch(trackConverterProvider);

  return AddOrEditRecordTrackArgsConverterImpl(trackConverter: trackConverter);
}

abstract interface class AddOrEditRecordTrackArgsConverter
    implements JsonConverter<AddOrEditRecordTrackArgs?, Map<String, String>> {}

class AddOrEditRecordTrackArgsConverterImpl
    implements AddOrEditRecordTrackArgsConverter {
  final TrackConverter _trackConverter;

  final _trackArgument = "track";

  const AddOrEditRecordTrackArgsConverterImpl({
    required TrackConverter trackConverter,
  }) : _trackConverter = trackConverter;

  @override
  AddOrEditRecordTrackArgs? fromJson(Map<String, String> json) {
    try {
      final jsonTrack = json[_trackArgument];

      final track = jsonTrack != null
          ? () {
              final json = jsonDecode(jsonTrack);
              if (json != null && json is Map<String, dynamic>) {
                final data = json.map((key, item) {
                  return MapEntry(key, item.toString());
                });
                return _trackConverter.fromJson(data);
              } else {
                return null;
              }
            }.call()
          : null;

      if (track == null) {
        return null;
      }

      return AddOrEditRecordTrackArgs(track: track);
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, String> toJson(AddOrEditRecordTrackArgs? object) {
    try {
      if (object == null) {
        return {};
      }

      final jsonTrack = jsonEncode(
        _trackConverter.toJson(object.track),
      );

      final result = {
        _trackArgument: jsonTrack,
      };

      return result;
    } catch (e) {
      return {};
    }
  }
}

@freezed
class AddOrEditRecordTrackArgs with _$AddOrEditRecordTrackArgs {
  const factory AddOrEditRecordTrackArgs({
    required Track track,
  }) = _AddOrEditRecordTrackArgs;
}
