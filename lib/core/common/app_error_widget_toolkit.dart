import 'package:flutter/material.dart';

abstract interface class AppErrorWidgetToolkit {
  String header({
    required BuildContext context,
    required Object object,
  });

  String body({
    required BuildContext context,
    required Object object,
  });
}
