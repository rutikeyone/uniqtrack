import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqtrack/core/theme/app_colors.dart';

class AppTextStyles {
  static final h1 = GoogleFonts.montserrat(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  static final TextStyle h3 = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );

  static final hint = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.onPrimary,
  );

  static final TextStyle bodyLg = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
  );

  static final body = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
  );

  static final bodySm = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
  );

  static final TextStyle labelLg = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
}
