import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/core/theme/app_colors.dart';
import 'package:malawi_ride_share_app/core/theme/app_elevation.dart';
import 'package:malawi_ride_share_app/core/theme/app_radii.dart';
import 'package:malawi_ride_share_app/core/theme/app_spacing.dart';
import 'package:malawi_ride_share_app/core/theme/app_typography.dart';
import 'package:malawi_ride_share_app/core/theme/app_typography_token.dart';

ThemeData buildAppTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    cardColor: AppColors.surface,
    dividerColor: AppColors.border,
    shadowColor: AppColors.shadow,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.gray80,
        side: BorderSide(color: AppColors.border, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.gray0,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surface,
      contentPadding: EdgeInsets.symmetric(
          horizontal: defaultAppSpacing.m, vertical: defaultAppSpacing.m),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(defaultAppRadii.s),
        borderSide: BorderSide(color: AppColors.border, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(defaultAppRadii.s),
        borderSide: BorderSide(color: AppColors.border, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(defaultAppRadii.s),
        borderSide: BorderSide(color: AppColors.primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(defaultAppRadii.s),
        borderSide: BorderSide(color: AppColors.error, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(defaultAppRadii.s),
        borderSide: BorderSide(color: AppColors.error, width: 2),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(defaultAppRadii.s),
        borderSide: BorderSide(color: AppColors.gray20, width: 1),
      ),
      labelStyle: TextStyle(
        fontSize: defaultTypographyTokens.bodyMedium,
        fontWeight: FontWeight.w400,
        color: AppColors.gray60,
      ),
      hintStyle: TextStyle(
        fontSize: defaultTypographyTokens.bodyMedium,
        fontWeight: FontWeight.w400,
        color: AppColors.gray40,
      ),
      errorStyle: TextStyle(
        fontSize: defaultTypographyTokens.labelSmall,
        fontWeight: FontWeight.w400,
        color: AppColors.error,
      ),
      prefixIconColor: AppColors.gray60,
      suffixIconColor: AppColors.gray60,
    ),
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
    textTheme: buildTextTheme(defaultTypographyTokens, AppColors.onSurface),
    extensions: <ThemeExtension<dynamic>>[
      defaultAppElevation,
      defaultAppSpacing,
      defaultAppRadii,
      defaultTypographyTokens,
    ],
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColors.surface,
      modalBackgroundColor: AppColors.gray0,
      elevation: defaultAppElevation.high,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.vertical(top: Radius.circular(defaultAppRadii.m)),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      dragHandleColor: AppColors.gray40,
      dragHandleSize: Size(defaultAppSpacing.xl, defaultAppSpacing.xs),
      showDragHandle: true,
    ),
  );
}

const defaultAppElevation = AppElevation(
  low: 2,
  medium: 4,
  high: 8,
);

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

const defaultTypographyTokens = AppTypographyToken(
  displayLarge: 34.0,
  titleLarge: 20.0,
  bodyLarge: 16.0,
  bodyMedium: 14.0,
  labelSmall: 12.0,
);
