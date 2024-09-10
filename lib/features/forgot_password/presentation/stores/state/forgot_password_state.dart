import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/core/common/validation/entities/email.dart';
import 'package:uniqtrack/features/forgot_password/presentation/stores/state/forgot_status_state.dart';

part 'forgot_password_state.freezed.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required Email email,
    required ForgotStatusState forgotStatusState,
    required bool canForgotPassword,
  }) = _ForgotPasswordState;
}
