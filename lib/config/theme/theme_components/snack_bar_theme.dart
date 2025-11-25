import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/config/theme/tokens/app_colors.dart';
import 'package:malawi_ride_share_app/config/theme/tokens/app_radii.dart';

SnackBarThemeData buildSnackBarTheme(AppRadii radii) {
  return SnackBarThemeData(
    backgroundColor: AppColors.gray80,
    contentTextStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.gray0,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radii.s),
    ),
    behavior: SnackBarBehavior.floating,
    elevation: 4,
    actionTextColor: AppColors.primary,
  );
}
