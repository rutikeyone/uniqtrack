part of 'args.dart';

@riverpod
RecordTrackArgsConverter recordTrackArgsConverter(
    RecordTrackArgsConverterRef ref) {
  final trackConverter = ref.watch(trackConverterProvider);

  return RecordTrackArgsConverterImpl(trackConverter: trackConverter);
}

abstract interface class RecordTrackArgsConverter
    implements JsonConverter<RecordTrackArgs?, Map<String, String>> {}

class RecordTrackArgsConverterImpl implements RecordTrackArgsConverter {
  final TrackConverter _trackConverter;

  final _trackArgument = "track";
  final _modeArgument = "mode";

  const RecordTrackArgsConverterImpl({
    required TrackConverter trackConverter,
  }) : _trackConverter = trackConverter;

  @override
  RecordTrackArgs? fromJson(Map<String, String> json) {
    try {
      final jsonTrack = json[_trackArgument];
      final jsonMode = json[_modeArgument] ?? "0";

      final jsonDecoded = jsonTrack != null
          ? jsonDecode(jsonTrack) as Map<String, dynamic>?
          : null;

      final data = jsonDecoded?.map(
        (key, value) => MapEntry(key, value.toString()),
      );

      final track = data != null ? _trackConverter.fromJson(data) : null;

      if (track == null) {
        return null;
      }

      final mode = switch (jsonMode) {
        "0" => DetailsMode.tracks(),
        "1" => DetailsMode.myTracks(),
        "2" => DetailsMode.myFavouriteTracks(),
        _ => null,
      };

      return RecordTrackArgs(
        track: track,
        mode: mode,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, String> toJson(RecordTrackArgs? object) {
    try {
      if (object == null) {
        return {};
      }

      final jsonTrack = _trackConverter.toJson(
        object.track,
      );

      final jsonTrackEncode = jsonEncode(jsonTrack);
      final mode = object.mode?.when(
        tracks: () => "0",
        myTracks: () => "1",
        myFavouriteTracks: () => "2",
      );

      final result = {
        _trackArgument: jsonTrackEncode,
      };

      if (mode != null) {
        result.addAll({
          _modeArgument: mode,
        });
      }

      return result;
    } catch (e) {
      return {};
    }
  }
}

@freezed
class RecordTrackArgs with _$RecordTrackArgs {
  const factory RecordTrackArgs({
    required Track? track,
    required DetailsMode? mode,
  }) = _RecordTrackArgs;
}
