import 'package:flutter/foundation.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';

abstract interface class CommonUIDelegateBuilder {
  CommonUIDelegate create();
}

abstract interface class CommonUIDelegate {
  void cupertinoDialog({
    required AppStrings header,
    required AppStrings body,
    VoidCallback? closeCallback,
  });
}
