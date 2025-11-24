import 'package:flutter/material.dart';

TextTheme buildTextTheme(Color primaryTextColor) {
  return TextTheme(
    displayLarge: TextStyle(
        fontSize: 34, fontWeight: FontWeight.bold, color: primaryTextColor),
    titleLarge: TextStyle(
        fontSize: 20, fontWeight: FontWeight.w600, color: primaryTextColor),
    bodyLarge: TextStyle(fontSize: 16, color: primaryTextColor),
    bodyMedium: TextStyle(fontSize: 14, color: primaryTextColor),
    labelSmall: TextStyle(fontSize: 12, color: primaryTextColor),
  );
}
