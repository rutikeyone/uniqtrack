part of 'entities.dart';

@freezed
class MapDataUI with _$MapDataUI {
  const factory MapDataUI({
    required bool animatedToTrackShowed,
    required bool animatedToMemoryShowed,
  }) = _MapDataUI;
}
