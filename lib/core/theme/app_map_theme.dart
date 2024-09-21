import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/app_colors.dart';

class AppMapTheme extends ThemeExtension<AppMapTheme> {
  static final light = AppMapTheme(
    trackLineColor: AppColors.brightCyan,
    primaryUserLineColor: AppColors.crimsonRed,
    secondaryUserLineColor: AppColors.brightCyan,
  );

  final Color primaryUserLineColor;
  final Color secondaryUserLineColor;
  final Color trackLineColor;

  const AppMapTheme({
    required this.trackLineColor,
    required this.secondaryUserLineColor,
    required this.primaryUserLineColor,
  });

  @override
  ThemeExtension<AppMapTheme> copyWith({
    Color? trackLineColor,
    Color? primaryUserLineColor,
    Color? secondaryUserLineColor,
  }) {
    return AppMapTheme(
      trackLineColor: trackLineColor ?? this.trackLineColor,
      primaryUserLineColor: primaryUserLineColor ?? this.primaryUserLineColor,
      secondaryUserLineColor:
          secondaryUserLineColor ?? this.secondaryUserLineColor,
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
      primaryUserLineColor:
          Color.lerp(primaryUserLineColor, other.primaryUserLineColor, t) ??
              this.primaryUserLineColor,
      secondaryUserLineColor:
          Color.lerp(secondaryUserLineColor, other.secondaryUserLineColor, t) ??
              this.secondaryUserLineColor,
    );
  }
}
