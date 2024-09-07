import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_actions.freezed.dart';

@freezed
class ForgotActions with _$ForgotActions {
  const ForgotActions._();

  const factory ForgotActions.hideFocus() = _ForgotHideFocusActions;
  const factory ForgotActions.navigateBack() = _ForgotNavigateBackActions;

  @override
  bool operator ==(Object other) => false;

  @override
  int get hashCode {
    return maybeMap(
      orElse: () => 0,
    );
  }
}