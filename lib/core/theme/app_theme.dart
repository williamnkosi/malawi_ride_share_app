import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/core/theme/app_colors.dart';

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
  );
}
