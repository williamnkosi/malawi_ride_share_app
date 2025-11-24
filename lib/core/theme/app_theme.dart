import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/core/theme_components/app_bar_theme.dart';
import 'package:malawi_ride_share_app/core/tokens/app_colors.dart';
import 'package:malawi_ride_share_app/core/tokens/app_elevation.dart';
import 'package:malawi_ride_share_app/core/tokens/app_radii.dart';
import 'package:malawi_ride_share_app/core/tokens/app_spacing.dart';
import 'package:malawi_ride_share_app/core/theme_components/app_typography.dart';
import 'package:malawi_ride_share_app/core/tokens/app_typography_token.dart';
import 'package:malawi_ride_share_app/core/theme_components/bottom_sheet_theme.dart';
import 'package:malawi_ride_share_app/core/theme_components/button_themes.dart';
import 'package:malawi_ride_share_app/core/theme_components/dialog_theme.dart';
import 'package:malawi_ride_share_app/core/theme_components/input_decoration_theme.dart';
import 'package:malawi_ride_share_app/core/theme_components/snack_bar_theme.dart';

ThemeData buildAppTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    cardColor: AppColors.surface,
    dividerColor: AppColors.border,
    shadowColor: AppColors.shadow,
    appBarTheme: buildAppBarTheme(defaultAppElevation, defaultTypographyTokens),
    outlinedButtonTheme: buildOutlinedButtonTheme(),
    elevatedButtonTheme: buildElevatedButtonTheme(),
    textButtonTheme: buildTextButtonTheme(),
    inputDecorationTheme: buildInputDecorationTheme(
      defaultAppRadii,
      defaultAppSpacing,
      defaultTypographyTokens,
    ),
    snackBarTheme: buildSnackBarTheme(defaultAppRadii),
    dialogTheme: buildDialogTheme(defaultAppElevation, defaultAppRadii),
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
    bottomSheetTheme: buildBottomSheetTheme(
      defaultAppElevation,
      defaultAppRadii,
      defaultAppSpacing,
    ),
  );
}
