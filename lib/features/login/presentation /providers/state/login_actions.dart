import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_actions.freezed.dart';

@freezed
class LoginActions with _$LoginActions {
  const LoginActions._();

  const factory LoginActions.hideFocus() = _LoginHideFocusAction;

  @override
  bool operator ==(Object other) => false;

  @override
  int get hashCode {
    return maybeMap(
      orElse: () => 0,
    );
  }
}