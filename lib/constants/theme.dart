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
        headlineMedium: GoogleFonts.oxanium(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: AppColors.darkColor,
        ),
        bodyLarge: GoogleFonts.aBeeZee(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: AppColors.darkColor,
        ),
        bodyMedium: GoogleFonts.aBeeZee(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: AppColors.lightColor,
        ),
      ),
      useMaterial3: true,
    );
  }
}
