import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaco_website/theme/colors.dart';

class VacoTextStyles {
  static TextStyle appBarTitle = GoogleFonts.oxygen(
    fontSize: 36,
    fontWeight: FontWeight.normal,
    color: VacoColors.vacoOrange,
  );

  static TextStyle appBarAction = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: VacoColors.vacoBlack,
  );

  static TextStyle homeScreenLine1 = GoogleFonts.cantarell(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: VacoColors.vacoBlack,
  );

  static TextStyle homeScreenLine2 = GoogleFonts.cantarell(
    fontSize: 64,
    fontWeight: FontWeight.normal,
    color: VacoColors.vacoBlack,
  );

  static TextStyle homeScreenLine3 = GoogleFonts.cantarell(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: VacoColors.vacoBlack,
  );

  static TextStyle homeScreenButton1 = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static TextStyle homeScreenButton2 = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: VacoColors.vacoOrange,
  );
}