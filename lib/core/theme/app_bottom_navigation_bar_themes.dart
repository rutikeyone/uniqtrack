import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/app_colors.dart';
import 'package:uniqtrack/core/theme/app_primary_text_themes.dart';

class AppBottomNavigationBarThemes {
  static final light = BottomNavigationBarThemeData(
    selectedLabelStyle: AppPrimaryTextThemes.light.bodySmall?.copyWith(
      color: AppColors.malachite,
    ),
    unselectedLabelStyle: AppPrimaryTextThemes.light.bodySmall,
    selectedItemColor: AppColors.malachite,
    unselectedItemColor: AppColors.black,
  );
}
