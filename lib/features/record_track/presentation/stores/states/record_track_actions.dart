part of 'states.dart';

@freezed
class RecordTrackActions with _$RecordTrackActions {
  const factory RecordTrackActions.initStreamPositions({
    required void Function(String, String) callback,
    required AppStrings title,
    required AppStrings body,
  }) = _RecordTrackInitStreamPositionsAction;
}
