import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/app_text_styles.dart';

class AppPrimaryTextThemes {
  static TextTheme get light {
    return TextTheme(
      displayMedium: AppTextStyles.h2,
      displaySmall: AppTextStyles.h3,
      bodyLarge: AppTextStyles.bodyLg,
      bodyMedium: AppTextStyles.body,
      bodySmall: AppTextStyles.bodySm,
      labelLarge: AppTextStyles.labelLg,
      titleLarge: AppTextStyles.titleLg,
    );
  }
}
