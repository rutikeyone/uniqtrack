import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';

part 'common_ui_actions.freezed.dart';

@freezed
class CommonUIActions with _$CommonUIActions {
  const factory CommonUIActions.cupertinoDialog({
    required AppStrings header,
    required AppStrings body,
    @Default(AppStrings.okay()) AppStrings close,
  }) = CommonCupertinoDialogAction;
}
