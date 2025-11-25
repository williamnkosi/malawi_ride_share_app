import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:malawi_ride_share_app/config/theme/tokens/app_colors.dart';
import 'package:malawi_ride_share_app/config/theme/tokens/app_elevation.dart';
import 'package:malawi_ride_share_app/config/theme/tokens/app_typography_token.dart';

AppBarTheme buildAppBarTheme(
    AppElevation elevation, AppTypographyToken typographyToken) {
  return AppBarTheme(
    backgroundColor: AppColors.surface,
    foregroundColor: AppColors.onSurface,
    elevation: elevation.low,
    centerTitle: false,
    titleTextStyle: TextStyle(
      fontSize: typographyToken.titleLarge,
      fontWeight: FontWeight.w600,
      color: AppColors.onSurface,
    ),
    iconTheme: IconThemeData(
      color: AppColors.gray80,
      size: 24,
    ),
    actionsIconTheme: IconThemeData(
      color: AppColors.gray80,
      size: 24,
    ),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  );
}
