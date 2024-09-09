import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/app_colors.dart';
import 'package:uniqtrack/core/theme/icon_theme.dart';

class AppBarThemes {
  static final light = AppBarTheme(
    backgroundColor: AppColors.white,
    elevation: 0,
    iconTheme: AppIconThemes.light,
  );
}
