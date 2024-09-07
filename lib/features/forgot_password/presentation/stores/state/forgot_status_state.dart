import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_status_state.freezed.dart';

@freezed
class ForgotStatusState with _$ForgotStatusState {
  const factory ForgotStatusState.pure() = _ForgotPureStatusState;

  const factory ForgotStatusState.pending() = _ForgotPendingStatusState;

  const factory ForgotStatusState.success() = _ForgotSuccessStatusState;

  const factory ForgotStatusState.failure() = _ForgotFailureStatusState;
}