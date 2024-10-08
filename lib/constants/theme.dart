import 'package:flutter/material.dart';
import 'package:dwd_website/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColor,
      ),
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.oxanium(
          fontSize: 32,
          fontWeight: FontWeight.w800,
          color: AppColors.darkColor,
        ),
        bodyLarge: GoogleFonts.oxanium(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.darkColor,
        ),
        bodyMedium: GoogleFonts.oxanium(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: AppColors.darkColor,
        ),
        bodySmall: GoogleFonts.oxanium(
          fontSize: 14,
          color: AppColors.darkColor,
        ),
      ),
      primaryTextTheme: TextTheme(
        headlineLarge: GoogleFonts.oxanium(
          fontSize: 32,
          fontWeight: FontWeight.w800,
          color: AppColors.lightColor,
        ),
        bodyMedium: GoogleFonts.oxanium(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: AppColors.lightColor,
        ),
        bodySmall: GoogleFonts.oxanium(
          fontSize: 14,
          color: AppColors.lightColor,
        ),
      ),
      useMaterial3: true,
    );
  }
}
