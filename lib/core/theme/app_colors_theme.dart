import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/app_colors.dart';

class AppColorsTheme extends ThemeExtension<AppColorsTheme> {
  final Color primaryIconColor;
  final Color primaryButtonBorder;

  final Color secondaryButtonColor;

  final Color primaryTextHintColor;

  static final light = AppColorsTheme(
    primaryIconColor: AppColors.white,
    primaryButtonBorder: AppColors.sliderGray,
    secondaryButtonColor: AppColors.lavenderMist,
    primaryTextHintColor: AppColors.lavenderGray,
  );

  const AppColorsTheme({
    required this.primaryIconColor,
    required this.primaryButtonBorder,
    required this.secondaryButtonColor,
    required this.primaryTextHintColor,
  });

  @override
  ThemeExtension<AppColorsTheme> copyWith({
    Color? primaryIconColor,
    Color? primaryButtonBorder,
    Color? secondaryIconColor,
    Color? primaryTextHintColor,
  }) {
    return AppColorsTheme(
      primaryIconColor: primaryIconColor ?? this.primaryIconColor,
      primaryButtonBorder: primaryButtonBorder ?? this.primaryButtonBorder,
      secondaryButtonColor: secondaryIconColor ?? this.secondaryButtonColor,
      primaryTextHintColor: primaryTextHintColor ?? this.primaryTextHintColor,
    );
  }

  @override
  ThemeExtension<AppColorsTheme> lerp(
      covariant ThemeExtension<AppColorsTheme>? other, double t) {
    if (other is! AppColorsTheme) {
      return this;
    }

    return AppColorsTheme(
      primaryIconColor:
          Color.lerp(this.primaryIconColor, other.primaryIconColor, t) ??
              this.primaryIconColor,
      primaryButtonBorder:
          Color.lerp(this.primaryButtonBorder, other.primaryButtonBorder, t) ??
              this.primaryButtonBorder,
      secondaryButtonColor: Color.lerp(
              this.secondaryButtonColor, other.secondaryButtonColor, t) ??
          this.secondaryButtonColor,
      primaryTextHintColor: Color.lerp(
              this.primaryTextHintColor, other.primaryTextHintColor, t) ??
          this.primaryTextHintColor,
    );
  }
}
