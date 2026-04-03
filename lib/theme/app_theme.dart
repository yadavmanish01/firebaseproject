import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

class AppTheme {
  static final ThemeData apptheme = ThemeData(
    // App-wide colors
    splashColor: AppColor.primary,
    scaffoldBackgroundColor: AppColor.brightgrey,

    // AppBar Style
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.color1,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      toolbarHeight: 60,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),

    // Text Theme using Google Fonts
    textTheme: GoogleFonts.robotoTextTheme().apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),

    primaryTextTheme: GoogleFonts.robotoTextTheme().apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),

    // Button Style
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: const Color(0xFF43D2F4),
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      ),
    ),

    // Input Field Theme (optional global style)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      filled: true,
      fillColor: Colors.white,
      hintStyle: const TextStyle(color: Colors.grey),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey.shade400),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey.shade400),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColor.primary, width: 2),
      ),
    ),
  );
}
