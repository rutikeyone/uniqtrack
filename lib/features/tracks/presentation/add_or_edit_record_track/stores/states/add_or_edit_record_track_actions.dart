part of 'states.dart';

@immutable
@freezed
class AddOrEditRecordTrackActions with _$AddOrEditRecordTrackActions {
  const factory AddOrEditRecordTrackActions.navigateBack() =
      _AddOrEditRecordTrackNavigateBackAction;
}
