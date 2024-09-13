import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/app_colors.dart';

class AppColorsTheme extends ThemeExtension<AppColorsTheme> {
  final Color primaryIconColor;
  final Color secondaryIconColor;

  final Color primaryButtonBorder;
  final Color secondaryButtonColor;

  final Color primaryTextHintColor;

  final Color primaryDisableButtonColor;

  static final light = AppColorsTheme(
    primaryIconColor: AppColors.white,
    secondaryIconColor: AppColors.black,
    primaryButtonBorder: AppColors.sliderGray,
    secondaryButtonColor: AppColors.lavenderMist,
    primaryTextHintColor: AppColors.lavenderGray,
    primaryDisableButtonColor: AppColors.paleGray,
  );

  const AppColorsTheme({
    required this.primaryIconColor,
    required this.secondaryIconColor,
    required this.primaryButtonBorder,
    required this.secondaryButtonColor,
    required this.primaryTextHintColor,
    required this.primaryDisableButtonColor,
  });

  @override
  ThemeExtension<AppColorsTheme> copyWith({
    Color? primaryIconColor,
    Color? secondaryIconColor,
    Color? primaryButtonBorder,
    Color? primaryTextHintColor,
    Color? primaryDisableButtonColor,
  }) {
    return AppColorsTheme(
      primaryIconColor: primaryIconColor ?? this.primaryIconColor,
      secondaryIconColor: secondaryIconColor ?? this.secondaryIconColor,
      primaryButtonBorder: primaryButtonBorder ?? this.primaryButtonBorder,
      secondaryButtonColor: secondaryIconColor ?? this.secondaryButtonColor,
      primaryTextHintColor: primaryTextHintColor ?? this.primaryTextHintColor,
      primaryDisableButtonColor:
          primaryDisableButtonColor ?? this.primaryDisableButtonColor,
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
      secondaryIconColor:
          Color.lerp(this.secondaryIconColor, other.secondaryIconColor, t) ??
              this.secondaryIconColor,
      primaryButtonBorder:
          Color.lerp(this.primaryButtonBorder, other.primaryButtonBorder, t) ??
              this.primaryButtonBorder,
      secondaryButtonColor: Color.lerp(
              this.secondaryButtonColor, other.secondaryButtonColor, t) ??
          this.secondaryButtonColor,
      primaryTextHintColor: Color.lerp(
              this.primaryTextHintColor, other.primaryTextHintColor, t) ??
          this.primaryTextHintColor,
      primaryDisableButtonColor: Color.lerp(
              primaryDisableButtonColor, other.primaryDisableButtonColor, t) ??
          this.primaryDisableButtonColor,
    );
  }
}
