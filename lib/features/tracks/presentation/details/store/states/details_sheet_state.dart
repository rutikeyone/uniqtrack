part of 'states.dart';

@freezed
class DetailsSheetState with _$DetailsSheetState {
  const factory DetailsSheetState.pure() = _PureDetailsSheetState;

  const factory DetailsSheetState.details({
    required TrackUI track,
  }) = _DetailsSheetState;

  const factory DetailsSheetState.memory({
    required Memory memory,
  }) = _MemoryState;
}
