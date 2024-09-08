import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';

part 'app_permission_result.freezed.dart';

@freezed
class AppPermissionResult with _$AppPermissionResult {
  const factory AppPermissionResult.success() = _AppPermissionSuccessResult;

  const factory AppPermissionResult.error({
    required AppPermissionError error,
  }) = _AppPermissionErrorResult;
}
