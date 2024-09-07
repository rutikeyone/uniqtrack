import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/core/presentation/validation/entities/email.dart';
import 'package:uniqtrack/core/presentation/validation/entities/password.dart';
import 'package:uniqtrack/features/login/presentation%20/stores/state/login_status_state.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required Email email,
    required Password password,
    required LoginStatusState loginStateStatus,
    required bool canLogin,
  }) = _LoginState;
}
