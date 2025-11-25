import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/config/theme/tokens/app_colors.dart';
import 'package:malawi_ride_share_app/config/theme/tokens/app_radii.dart';
import 'package:malawi_ride_share_app/config/theme/tokens/app_spacing.dart';
import 'package:malawi_ride_share_app/config/theme/tokens/app_typography_token.dart';

InputDecorationTheme buildInputDecorationTheme(
  AppRadii radii,
  AppSpacing spacing,
  AppTypographyToken typography,
) {
  return InputDecorationTheme(
    filled: true,
    fillColor: AppColors.surface,
    contentPadding:
        EdgeInsets.symmetric(horizontal: spacing.m, vertical: spacing.m),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(radii.s),
      borderSide: BorderSide(color: AppColors.border, width: 1),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(radii.s),
      borderSide: BorderSide(color: AppColors.border, width: 1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(radii.s),
      borderSide: BorderSide(color: AppColors.primary, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(radii.s),
      borderSide: BorderSide(color: AppColors.error, width: 1),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(radii.s),
      borderSide: BorderSide(color: AppColors.error, width: 2),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(radii.s),
      borderSide: BorderSide(color: AppColors.gray20, width: 1),
    ),
    labelStyle: TextStyle(
      fontSize: typography.bodyMedium,
      fontWeight: FontWeight.w400,
      color: AppColors.gray60,
    ),
    hintStyle: TextStyle(
      fontSize: typography.bodyMedium,
      fontWeight: FontWeight.w400,
      color: AppColors.gray40,
    ),
    errorStyle: TextStyle(
      fontSize: typography.labelSmall,
      fontWeight: FontWeight.w400,
      color: AppColors.error,
    ),
    prefixIconColor: AppColors.gray60,
    suffixIconColor: AppColors.gray60,
  );
}
