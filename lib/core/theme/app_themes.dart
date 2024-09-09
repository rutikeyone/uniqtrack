import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/app_bottom_navigation_bar_theme.dart';
import 'package:uniqtrack/core/theme/app_bottom_sheet_theme.dart';
import 'package:uniqtrack/core/theme/app_color_scheme.dart';
import 'package:uniqtrack/core/theme/app_colors.dart';
import 'package:uniqtrack/core/theme/app_input_decoration_theme.dart';
import 'package:uniqtrack/core/theme/app_primary_text_theme.dart';
import 'package:uniqtrack/core/theme/app_text_theme.dart';
import 'package:uniqtrack/core/theme/floating_action_button_theme.dart';
import 'package:uniqtrack/core/theme/icon_theme.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: false,
      brightness: Brightness.light,
      primaryTextTheme: AppPrimaryTextThemes.light,
      textTheme: AppTextTheme.light,
      scaffoldBackgroundColor: AppColors.white,
      inputDecorationTheme: AppInputDecorationTheme.light,
      colorScheme: AppColorScheme.light,
      bottomSheetTheme: AppBottomSheetTheme.light,
      dividerColor: AppColors.greyOlive,
      bottomNavigationBarTheme: AppBottomNavigationBarTheme.light,
      floatingActionButtonTheme: FloatingActionButtonTheme.light,
      iconTheme: AppIconTheme.light,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.white,
        elevation: 0,
         iconTheme: IconThemeData(
           color: AppColors.black,
         )
      ),
    );
  }
}
