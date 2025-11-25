import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/config/theme/tokens/app_colors.dart';
import 'package:malawi_ride_share_app/config/theme/tokens/app_elevation.dart';
import 'package:malawi_ride_share_app/config/theme/tokens/app_radii.dart';
import 'package:malawi_ride_share_app/config/theme/tokens/app_spacing.dart';

BottomSheetThemeData buildBottomSheetTheme(
  AppElevation elevation,
  AppRadii radii,
  AppSpacing spacing,
) {
  return BottomSheetThemeData(
    backgroundColor: AppColors.surface,
    modalBackgroundColor: AppColors.gray0,
    elevation: elevation.high,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(radii.m)),
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    dragHandleColor: AppColors.gray40,
    dragHandleSize: Size(spacing.xl, spacing.xs),
    showDragHandle: true,
  );
}
