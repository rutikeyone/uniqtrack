part of 'states.dart';

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