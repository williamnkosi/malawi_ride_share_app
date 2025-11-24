import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/core/theme/app_colors.dart';
import 'package:malawi_ride_share_app/core/theme/app_radii.dart';
import 'package:malawi_ride_share_app/core/theme/app_spacing.dart';
import 'package:malawi_ride_share_app/core/theme/app_typography_token.dart';

ThemeData buildAppTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    cardColor: AppColors.surface,
    dividerColor: AppColors.border,
    shadowColor: AppColors.shadow,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      primaryContainer: AppColors.primaryContainer,
      secondary: AppColors.gray60,
      surface: AppColors.surface,
      onPrimary: AppColors.gray0,
      onSurface: AppColors.onSurface,
      error: AppColors.error,
      onError: AppColors.gray0,
    ),
    extensions: <ThemeExtension<dynamic>>[
      defaultAppSpacing,
      defaultAppRadii,
      defaultTypographyTokens,
    ],
  );
}

const defaultAppSpacing = AppSpacing(
  xs: 4,
  s: 8,
  m: 16,
  l: 24,
  xl: 32,
);

const defaultAppRadii = AppRadii(
  xs: 4,
  s: 8,
  m: 16,
  l: 24,
  xl: 32,
  pill: 9999,
);
const defaultTypographyTokens = TypographyTokens(
  displayLarge: 34.0,
  titleLarge: 20.0,
  bodyLarge: 16.0,
  bodyMedium: 14.0,
  labelSmall: 12.0,
);
