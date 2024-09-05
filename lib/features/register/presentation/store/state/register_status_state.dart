import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_status_state.freezed.dart';

@immutable
@freezed
class RegisterStatusState with _$RegisterStatusState {
  const factory RegisterStatusState.pure() = _RegisterPureStatusState;

  const factory RegisterStatusState.pending() = _RegisterPendingStatusState;

  const factory RegisterStatusState.success() = _RegisterSuccessStatusState;

  const factory RegisterStatusState.failure() = _RegisterFailureStatusState;
}
