import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/app_text_styles.dart';

class AppTextThemes {
  static TextTheme get light {
    return TextTheme(
      displayLarge: AppTextStyles.h1,
      displaySmall: AppTextStyles.h3,
      bodyLarge: AppTextStyles.bodyLg,
      bodyMedium: AppTextStyles.body,
      bodySmall: AppTextStyles.bodySm,
      labelLarge: AppTextStyles.labelLg,
    );
  }
}
