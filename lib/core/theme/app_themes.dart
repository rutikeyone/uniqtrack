import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/app_bar_themes.dart';
import 'package:uniqtrack/core/theme/app_bottom_navigation_bar_themes.dart';
import 'package:uniqtrack/core/theme/app_bottom_sheet_themes.dart';
import 'package:uniqtrack/core/theme/app_button_theme.dart';
import 'package:uniqtrack/core/theme/app_color_schemes.dart';
import 'package:uniqtrack/core/theme/app_colors.dart';
import 'package:uniqtrack/core/theme/app_colors_theme.dart';
import 'package:uniqtrack/core/theme/app_icon_button_theme.dart';
import 'package:uniqtrack/core/theme/app_input_decoration_themes.dart';
import 'package:uniqtrack/core/theme/app_map_theme.dart';
import 'package:uniqtrack/core/theme/app_primary_text_themes.dart';
import 'package:uniqtrack/core/theme/app_text_themes.dart';
import 'package:uniqtrack/core/theme/floating_action_button_themes.dart';
import 'package:uniqtrack/core/theme/icon_theme.dart';

class AppThemes {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: false,
      brightness: Brightness.light,
      primaryTextTheme: AppPrimaryTextThemes.light,
      textTheme: AppTextThemes.light,
      scaffoldBackgroundColor: AppColors.white,
      inputDecorationTheme: AppInputDecorationThemes.light,
      colorScheme: AppColorSchemes.light,
      bottomSheetTheme: AppBottomSheetThemes.light,
      dividerColor: AppColors.lightSlateGray,
      bottomNavigationBarTheme: AppBottomNavigationBarThemes.light,
      floatingActionButtonTheme: FloatingActionButtonThemes.light,
      iconTheme: AppIconThemes.light,
      iconButtonTheme: AppIconButtonTheme.light,
        appBarTheme: AppBarThemes.light,
      buttonTheme: AppButtonTheme.light,
      extensions: [
        AppMapTheme.light,
        AppColorsTheme.light,
      ]
    );
  }
}
