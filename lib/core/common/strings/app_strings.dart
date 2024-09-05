import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_strings.freezed.dart';

@freezed
class AppStrings with _$AppStrings {
  const factory AppStrings.error() = _AppErrorString;
  const factory AppStrings.okay() = _AppOkayString;
  const factory AppStrings.errorHasOccurred() = _AppErrorHasOccuredString;
}