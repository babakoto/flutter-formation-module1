import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppThemes {
  static const white = Colors.white;
  static const black = Colors.black87;
  static const primary = Color(0xff264c86);
  static const secondary = Color(0xffe6ecf3);

  static var displayLarge = GoogleFonts.roboto(
    fontSize: 24,
    color: black,
    fontWeight: FontWeight.bold,
  );
  static var themes = ThemeData(
    textTheme: TextTheme(
      displayLarge: displayLarge,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: white,
      elevation: 0,
    ),
    scaffoldBackgroundColor: white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: primary),
    ),
    chipTheme: ChipThemeData(
      disabledColor: Colors.grey,
      padding: EdgeInsets.all(18),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      selectedColor: primary,
      labelStyle: TextStyle(color: white),
    ),
  );
}
