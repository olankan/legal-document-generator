import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class CustomTextStyles {
  static TextStyle headerTextStyle = TextStyle(
    color: AppColor.TextColor,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    fontFamily: 'Onest',
  );
  static TextStyle buttonTextStyle = TextStyle(
    color: AppColor.white,
    fontWeight: FontWeight.w900,
    fontSize: 16,
    fontFamily: 'Onest',
  );
  static TextStyle hintStyle = TextStyle(
      color: AppColor.black.withOpacity(0.2),
      fontFamily: 'Onest',
      fontSize: 14,
      letterSpacing: 0);
  static TextStyle headerTextStyle2 = GoogleFonts.lato(
    textStyle: TextStyle(
        letterSpacing: .5,
        color: AppColor.white,
        fontWeight: FontWeight.w900,
        fontSize: 16),
  );
}
