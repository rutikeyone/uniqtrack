part of 'entities.dart';

@freezed
class TrackUI with _$TrackUI {
  const factory TrackUI({
    required Track? track,
    required bool? isCurrentUserCreator,
    required bool? isFavouriteTrack,
  }) = _TrackUI;
}
