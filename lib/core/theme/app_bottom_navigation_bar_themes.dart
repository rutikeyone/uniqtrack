import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/app_colors.dart';
import 'package:uniqtrack/core/theme/app_primary_text_themes.dart';

class AppBottomNavigationBarThemes {
  static final light = BottomNavigationBarThemeData(
    selectedLabelStyle: AppPrimaryTextThemes.light.bodySmall?.copyWith(
      color: AppColors.onSecondary,
    ),
    unselectedLabelStyle: AppPrimaryTextThemes.light.bodySmall,
    selectedItemColor: AppColors.onSecondary,
    unselectedItemColor: AppColors.black,
  );
}
