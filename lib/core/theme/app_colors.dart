import 'package:flutter/material.dart';

class AppColors {
  // Brand Colors
  static const Color primary = Color(0xFF8B5CF6); // Luxurious purple
  static const Color primaryContainer =
      Color(0xFFF3E8FF); // Subtle purple for cards/chips

  // Neutral Gray Scale
  static const Color gray0 = Color(0xFFFFFFFF); // Main background
  static const Color gray5 = Color(0xFFFAFAFA); // Surface
  static const Color gray10 = Color(0xFFF4F4F5); // Surface variant
  static const Color gray20 = Color(0xFFE4E4E7); // Borders / dividers
  static const Color gray40 = Color(0xFFA1A1AA); // Secondary text / icons
  static const Color gray60 = Color(0xFF52525B); // Main text
  static const Color gray80 = Color(0xFF27272A); // Headings / strong emphasis
  static const Color gray100 = Color(0xFF000000); // Pure black if needed

  // Surface & Structural Colors
  static const Color background = gray0;
  static const Color surface = gray5;
  static const Color surfaceVariant = gray10;
  static const Color border = gray20;
  static const Color shadow = Color.fromRGBO(0, 0, 0, 0.08);

  static const Color onBackground = gray80;
  static const Color onSurface = gray60;

  // Semantic Colors
  static const Color success = Color(0xFF34D399); // Soft green
  static const Color error = Color(0xFFEF4444); // Red for errors
  static const Color warning = Color(0xFFFBBF24); // Yellow for alerts
  static const Color info = Color(0xFF3B82F6); // Optional blue for info
}
