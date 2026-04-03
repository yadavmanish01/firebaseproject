import 'package:flutter/material.dart';
import '../theme/app_color.dart';

class AppStyle {
  // 🔹 AppBar Title
  static const appbartxt = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  // 🔹 Buttons
  static const textbtntxt = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColor.primary,
  );

  static const elevatedButtonText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  // 🔹 Primary Bold Headings
  static const headingLarge = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const headingMedium = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static const headingSmall = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  // 🔹 Subheadings / Section Titles
  static const subheading = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: AppColor.primary,
  );

  // 🔹 Body / Paragraph Text
  static const bodyLarge = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static const bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black87,
  );

  static const bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.black54,
  );

  // 🔹 Labels / Form Field Titles
  static const label = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  // 🔹 Captions / Helper Text
  static const caption = TextStyle(
    fontSize: 13,
    color: Colors.grey,
  );

  static const errorText = TextStyle(
    fontSize: 13,
    color: Colors.redAccent,
    fontWeight: FontWeight.w500,
  );

  // 🔹 Common Bold Text
  static const commonbold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  // 🔹 Grey Text
  static const greyText = TextStyle(
    fontSize: 14,
    color: Colors.grey,
  );

  // 🔹 Input Decoration (Common for TextFields)
  static InputDecoration inputDecoration({String? hint, IconData? icon}) {
    return InputDecoration(
      hintText: hint,
      prefixIcon: icon != null ? Icon(icon, color: Colors.grey) : null,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
    );
  }

  // 🔹 Box Shadow
  static List<BoxShadow> shadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.05),
      blurRadius: 6,
      offset: const Offset(0, 4),
    ),
  ];
}
