import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/app_colors.dart';

class AppMapTheme extends ThemeExtension<AppMapTheme> {
  static final light = AppMapTheme(
    trackLineColor: AppColors.brightCyan,
    userLineColor: AppColors.crimsonRed,
  );

  final Color userLineColor;
  final Color trackLineColor;

  const AppMapTheme({
    required this.trackLineColor,
    required this.userLineColor,
  });

  @override
  ThemeExtension<AppMapTheme> copyWith({
    Color? trackLineColor,
    Color? userLineColor,
  }) {
    return AppMapTheme(
      trackLineColor: trackLineColor ?? this.trackLineColor,
      userLineColor: userLineColor ?? this.userLineColor,
    );
  }

  @override
  ThemeExtension<AppMapTheme> lerp(
      covariant ThemeExtension<AppMapTheme>? other, double t) {
    if (other is! AppMapTheme) {
      return this;
    }
    return AppMapTheme(
      trackLineColor: Color.lerp(trackLineColor, other.trackLineColor, t) ??
          this.trackLineColor,
      userLineColor: Color.lerp(userLineColor, other.userLineColor, t) ??
          this.userLineColor,
    );
  }
}
