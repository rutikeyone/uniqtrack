import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/app_permission_handler/app_permission_handler.dart';
import 'package:uniqtrack/core/common/app_permission_handler/result/app_permission_result.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';

part 'app_permission_handler_impl.g.dart';

@riverpod
DeviceInfoPlugin deviceInfoPlugin(DeviceInfoPluginRef ref) {
  return DeviceInfoPlugin();
}

@riverpod
AppPermissionHandler appPermissionHandler(AppPermissionHandlerRef ref) {
  final deviceInfoPlugin = ref.watch(deviceInfoPluginProvider);

  return AppPermissionHandlerImpl(deviceInfoPlugin: deviceInfoPlugin);
}

class AppPermissionHandlerImpl implements AppPermissionHandler {
  final DeviceInfoPlugin _deviceInfoPlugin;

  const AppPermissionHandlerImpl({
    required DeviceInfoPlugin deviceInfoPlugin,
  }) : _deviceInfoPlugin = deviceInfoPlugin;

  @override
  Future<AppPermissionResult> requestCamera() async {
    final permissionStatus = await Permission.camera.request();

    if (permissionStatus.isDenied) {
      final permissionError = AppPermissionError(
        category: PermissionErrorCategory.denied(),
      );
      return AppPermissionResult.error(error: permissionError);
    } else if (permissionStatus.isPermanentlyDenied) {
      final permissionError = AppPermissionError(
        category: PermissionErrorCategory.permanentlyDenied(),
      );
      return AppPermissionResult.error(error: permissionError);
    }

    return AppPermissionResult.success();
  }

  @override
  Future<AppPermissionResult> requestStorage() async {
    final isAndroid = Platform.isAndroid;
    final isIOS = Platform.isIOS;
    final PermissionStatus permissionStatus;

    if (isAndroid) {
      final androidInfo = await _deviceInfoPlugin.androidInfo;
      final androidSdkInt = androidInfo.version.sdkInt;
      if (androidSdkInt > 32) {
        permissionStatus = await Permission.photos.request();
      } else {
        permissionStatus = await Permission.storage.request();
      }
    } else if (isIOS) {
      permissionStatus = await Permission.photos.request();
    } else {
      permissionStatus = await Permission.storage.request();
    }

    if (permissionStatus.isDenied) {
      final permissionError = AppPermissionError(
        category: PermissionErrorCategory.denied(),
      );
      return AppPermissionResult.error(error: permissionError);
    } else if (permissionStatus.isPermanentlyDenied) {
      final permissionError = AppPermissionError(
        category: PermissionErrorCategory.permanentlyDenied(),
      );
      return AppPermissionResult.error(error: permissionError);
    }

    return AppPermissionResult.success();
  }
}
