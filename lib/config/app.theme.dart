import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static var kPrimeryColor = const Color(0xff27AE60);
  static var kTitleColor = const Color(0xffdfe0db);
  static var kTextColor = const Color(0xffdfe0db);
  static TextStyle textStyle() {
    return const TextStyle(color: Colors.white);
  }

  static ThemeData tema = ThemeData.dark().copyWith(
    textTheme: GoogleFonts.overpassTextTheme(),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: kPrimeryColor,
      secondary: kPrimeryColor,
    ),
  );
}
