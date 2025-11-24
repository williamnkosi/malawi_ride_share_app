import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/core/theme/app_typography_token.dart';

TextTheme buildTextTheme(AppTypographyToken tokens, Color textColor) {
  return TextTheme(
    displayLarge: TextStyle(
      fontSize: tokens.displayLarge,
      fontWeight: FontWeight.bold,
      color: textColor,
    ),
    titleLarge: TextStyle(
      fontSize: tokens.titleLarge,
      fontWeight: FontWeight.w600,
      color: textColor,
    ),
    bodyLarge: TextStyle(
      fontSize: tokens.bodyLarge,
      color: textColor,
    ),
    bodyMedium: TextStyle(
      fontSize: tokens.bodyMedium,
      color: textColor,
    ),
    labelSmall: TextStyle(
      fontSize: tokens.labelSmall,
      color: textColor,
    ),
  );
}
