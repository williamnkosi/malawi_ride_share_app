import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/config/theme/tokens/app_colors.dart';
import 'package:malawi_ride_share_app/config/theme/tokens/app_elevation.dart';
import 'package:malawi_ride_share_app/config/theme/tokens/app_radii.dart';

DialogThemeData buildDialogTheme(AppElevation elevation, AppRadii radii) {
  return DialogThemeData(
    backgroundColor: AppColors.surface,
    elevation: elevation.high,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radii.m),
    ),
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.onSurface,
    ),
    contentTextStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.gray60,
    ),
  );
}
