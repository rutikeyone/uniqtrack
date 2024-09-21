part of 'entities.dart';

@freezed
class TrackUI with _$TrackUI {
  const factory TrackUI({
    required Track? track,
    @Default(false) bool currentUserCreator,
    @Default(false) bool favouriteTrack,
    @Default(true) bool deleteEnabled,
    @Default(true) bool favouriteEnabled,
    @Default(true) bool canDelete,
  }) = _TrackUI;
}
