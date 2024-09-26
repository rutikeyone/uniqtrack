part of 'entities.dart';

@freezed
class TrackUI with _$TrackUI {
  bool get hasMemories =>
      track.memories != null && track.memories?.isNotEmpty == true;

  const TrackUI._();

  const factory TrackUI({
    required Track track,
    @Default(false) bool currentUserCreator,
    @Default(false) bool favouriteTrack,
    @Default(true) bool deleteEnabled,
    @Default(true) bool favouriteEnabled,
    @Default(true) bool canDelete,
    @Default(true) bool canMore,
  }) = _TrackUI;
}
