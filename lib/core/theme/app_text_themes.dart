import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/app_colors.dart';
import 'package:uniqtrack/core/theme/app_text_styles.dart';

class AppTextTheme {
  static TextTheme get light {
    return TextTheme(
      labelLarge: AppTextStyles.labelLg.copyWith(
        color: AppColors.white,
      ),
    );
  }
}