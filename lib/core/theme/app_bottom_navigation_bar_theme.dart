import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/app_colors.dart';
import 'package:uniqtrack/core/theme/app_text_theme.dart';

class AppBottomNavigationBarTheme {
  static final light = BottomNavigationBarThemeData(
    selectedLabelStyle: AppTextThemes.light.bodySmall?.copyWith(
      color: AppColors.onSecondary,
    ),
    unselectedLabelStyle: AppTextThemes.light.bodySmall,
    selectedItemColor: AppColors.onSecondary,
    unselectedItemColor: AppColors.black,
  );
}
