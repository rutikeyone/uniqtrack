part of 'args.dart';

@riverpod
DetailsArgsConverter detailsArgsConverter(DetailsArgsConverterRef ref) {
  return DetailsArgsConverterImpl();
}

abstract interface class DetailsArgsConverter
    implements JsonConverter<DetailsArgs, Map<String, String>> {}

class DetailsArgsConverterImpl implements DetailsArgsConverter {
  final _idArguments = "id";
  final _modeArguments = "mode";

  @override
  DetailsArgs fromJson(Map<String, String> json) {
    final id = json[_idArguments]!;
    final fromFavourites = json[_modeArguments] ?? '0';

    return DetailsArgs(
      id: id,
      mode: switch (fromFavourites) {
        '0' => DetailsMode.tracks(),
        '1' => DetailsMode.myTracks(),
        '2' => DetailsMode.myFavouriteTracks(),
        _ => DetailsMode.tracks(),
      },
    );
  }

  @override
  Map<String, String> toJson(DetailsArgs object) {
    final id = object.id;
    final mode = object.mode;

    return {
      _idArguments: id,
      _modeArguments: mode.when(
        tracks: () => '0',
        myTracks: () => '1',
        myFavouriteTracks: () => '2',
      ),
    };
  }
}

@freezed
class DetailsMode with _$DetailsMode {
  const factory DetailsMode.tracks() = _TracksDetailsMode;

  const factory DetailsMode.myTracks() = _MyTracksMode;

  const factory DetailsMode.myFavouriteTracks() = _MyFavouriteTracks;
}

@freezed
class DetailsArgs with _$DetailsArgs {
  const factory DetailsArgs({
    required String id,
    required DetailsMode mode,
  }) = _DetailsArgs;
}
