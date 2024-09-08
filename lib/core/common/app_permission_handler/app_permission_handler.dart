import 'package:uniqtrack/core/common/app_permission_handler/result/app_permission_result.dart';

abstract interface class AppPermissionHandler {
  Future<AppPermissionResult> requestCamera();

  Future<AppPermissionResult> requestStorage();
}
