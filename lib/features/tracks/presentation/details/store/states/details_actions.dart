part of 'states.dart';

@freezed
class DetailsActions with _$DetailsActions {
  const factory DetailsActions.navigateBack() = _NavigateBackDetailsAction;
  const factory DetailsActions.closeTrackDetailsDialog() = _CloseTrackDetailsDialogAction;
  const factory DetailsActions.animateCamera(CameraUpdate cameraUpdate) = _CameraUpdateAction;
}