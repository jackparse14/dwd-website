import 'package:dwd_website/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextTheme headingFont = GoogleFonts.oxaniumTextTheme();

  static TextStyle headingStyle({
    double fontSize = 32,
    FontWeight fontWeight = FontWeight.w800,
    Color color = AppColors.darkColor,
    TextDecoration? decoration,
  }) {
    return GoogleFonts.oxanium(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      decoration: decoration,
    );
  }

  static TextStyle navigationStyle({
    double fontSize = 20,
    FontWeight fontWeight = FontWeight.normal,
    Color color = AppColors.darkColor,
    TextDecoration? decoration,
  }) {
    return GoogleFonts.aBeeZee(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      decoration: decoration,
    );
  }
}
