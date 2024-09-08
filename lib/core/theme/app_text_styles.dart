import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqtrack/core/theme/app_colors.dart';

class AppTextStyles {
  static final _montserrat = "Montserrat";

  static final h1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
    fontFamily: _montserrat,
  );

  static final TextStyle h3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
    fontFamily: _montserrat,
  );

  static final hint = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.onPrimary,
    fontFamily: _montserrat,
  );

  static final TextStyle bodyLg = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
    fontFamily: _montserrat,
  );

  static final body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
    fontFamily: _montserrat,
  );

  static final bodySm = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
    fontFamily: _montserrat,
  );

  static final TextStyle labelLg = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    fontFamily: _montserrat,
  );
}
