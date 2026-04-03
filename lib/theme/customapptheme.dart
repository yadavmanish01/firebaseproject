// provider_app_theme.dart
import 'package:flutter/material.dart';

class CustomAppTheme {
  // Color Palette (Blue/Teal variant)
  static const Color primaryBlue2 = Color(0xFF0074d9);
  static const Color primaryBlue = Color(0xFF005a9c);
  static const Color pprimaryBlue = Color(0xFF3B82F6);
  static const Color secondaryBlue = Color(0xFF2563EB);
  static const Color accentTeal = Color(0xFF0D9488);
  static const Color lightCyan = Color(0xFF22D3EE);
  static const Color lighterCyan = Color(0xFFA5F3FC);
  static const Color darkBlue = Color(0xFF1E3A8A);

  // Additional Colors
  static const Color lightSurface = Color(0xFFF0F9FF);
  static const Color lightOnSurface1 = Color(0xFFf9fcff);
  static const Color lightOnSurface = Color(0xFF0F172A);
  static const Color lightBackground = Color(0xFFFFFFFF);
  static const Color darkSurface = Color(0xFF000000);
  static const Color darkBackground = Color(0xFF111827);
  static const Color error = Color(0xFFEF4444);
  static const Color warning = Color(0xFFF59E0B);

  // Light Theme
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,

      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
      primary: primaryBlue,
      secondary: secondaryBlue,
      tertiary: accentTeal,
      surface: lightSurface,
      background: lightBackground,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onTertiary: Colors.white,
      onSurface: lightOnSurface,
      onBackground: lightOnSurface,
      error: error,
    ),

      // App Bar Theme
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryBlue,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),

      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryBlue,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 2,
        ),
      ),

      // Outlined Button Theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryBlue,
          side: const BorderSide(color: primaryBlue, width: 2),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      // Text Button Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryBlue,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
      ),

      // Floating Action Button Theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryBlue,
        foregroundColor: Colors.white,
        elevation: 4,
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: lightSurface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: lighterCyan),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: lighterCyan),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: primaryBlue, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: error),
        ),
        labelStyle: const TextStyle(color: secondaryBlue),
        hintStyle: TextStyle(color: lightOnSurface.withOpacity(0.6)),
      ),

      // Card Theme
      cardTheme: CardThemeData(
        color: Colors.white,
        elevation: 2,
        shadowColor: primaryBlue.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),

      // Bottom Navigation Bar Theme
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: primaryBlue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),

      // Chip Theme
      chipTheme: ChipThemeData(
        backgroundColor: lighterCyan,
        selectedColor: primaryBlue,
        labelStyle: const TextStyle(color: darkBlue),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),

      // Progress Indicator Theme
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryBlue,
        linearTrackColor: lighterCyan,
        circularTrackColor: lighterCyan,
      ),

      // Switch Theme
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return primaryBlue;
          }
          return Colors.grey;
        }),
        trackColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return lighterCyan;
          }
          return Colors.grey.withOpacity(0.3);
        }),
      ),

      // Slider Theme
      sliderTheme: const SliderThemeData(
        activeTrackColor: primaryBlue,
        inactiveTrackColor: lighterCyan,
        thumbColor: primaryBlue,
        overlayColor: Color(0x293B82F6),
      ),
    );
  }

  // Dark Theme
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: lightCyan,
        secondary: primaryBlue,
        tertiary: lighterCyan,
        surface: darkSurface,
        background: Colors.black,
        onPrimary: darkBlue,
        onSecondary: Colors.white,
        onTertiary: darkBlue,
        onSurface: Colors.white,
        onBackground: Colors.white,
        error: error,
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: darkSurface,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: lightCyan,
          foregroundColor: darkBlue,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 2,
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: lightCyan,
          side: const BorderSide(color: lightCyan, width: 2),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: lightCyan,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
      ),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: lightCyan,
        foregroundColor: darkBlue,
        elevation: 4,
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: darkSurface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: lightCyan, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: error),
        ),
        labelStyle: const TextStyle(color: lightCyan),
        hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
      ),

      cardTheme: CardThemeData(
        color: darkSurface,
        elevation: 2,
        shadowColor: lightCyan.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkSurface,
        selectedItemColor: lightCyan,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),

      chipTheme: ChipThemeData(
        backgroundColor: darkBlue,
        selectedColor: lightCyan,
        labelStyle: const TextStyle(color: Colors.white),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),

      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: lightCyan,
        linearTrackColor: Colors.grey.withOpacity(0.3),
        circularTrackColor: Colors.grey.withOpacity(0.3),
      ),

      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return lightCyan;
          }
          return Colors.grey;
        }),
        trackColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return lightCyan.withOpacity(0.3);
          }
          return Colors.grey.withOpacity(0.3);
        }),
      ),

      sliderTheme: SliderThemeData(
        activeTrackColor: lightCyan,
        inactiveTrackColor: Colors.grey.withOpacity(0.3),
        thumbColor: lightCyan,
        overlayColor: lightCyan.withOpacity(0.2),
      ),
    );
  }
}
