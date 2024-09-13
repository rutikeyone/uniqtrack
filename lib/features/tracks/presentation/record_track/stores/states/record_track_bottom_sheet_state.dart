import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_track_bottom_sheet_state.freezed.dart';

@freezed
class RecordTrackBottomSheetState with _$RecordTrackBottomSheetState {
  const factory RecordTrackBottomSheetState.none() = _NoneBottomSheetState;
  const factory RecordTrackBottomSheetState.recordTrack() = _RecordTrackBottomSheetState;
  const factory RecordTrackBottomSheetState.memoryDetails() = _MemoryDetailsBottomSheetState;
}