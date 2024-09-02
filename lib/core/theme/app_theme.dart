import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/text_theme.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      textTheme: AppTextThemes.textTheme,
    );
  }
}