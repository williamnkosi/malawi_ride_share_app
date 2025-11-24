import 'dart:ui';

import 'package:flutter/material.dart';

@immutable
class AppTypographyToken extends ThemeExtension<AppTypographyToken> {
  final double displayLarge;
  final double titleLarge;
  final double bodyLarge;
  final double bodyMedium;
  final double labelSmall;

  const AppTypographyToken({
    required this.displayLarge,
    required this.titleLarge,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.labelSmall,
  });

  @override
  AppTypographyToken copyWith({
    double? displayLarge,
    double? titleLarge,
    double? bodyLarge,
    double? bodyMedium,
    double? labelSmall,
  }) {
    return AppTypographyToken(
      displayLarge: displayLarge ?? this.displayLarge,
      titleLarge: titleLarge ?? this.titleLarge,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      labelSmall: labelSmall ?? this.labelSmall,
    );
  }

  @override
  AppTypographyToken lerp(ThemeExtension<AppTypographyToken>? other, double t) {
    if (other is! AppTypographyToken) return this;
    return AppTypographyToken(
      displayLarge: lerpDouble(displayLarge, other.displayLarge, t)!,
      titleLarge: lerpDouble(titleLarge, other.titleLarge, t)!,
      bodyLarge: lerpDouble(bodyLarge, other.bodyLarge, t)!,
      bodyMedium: lerpDouble(bodyMedium, other.bodyMedium, t)!,
      labelSmall: lerpDouble(labelSmall, other.labelSmall, t)!,
    );
  }
}

const defaultTypographyTokens = AppTypographyToken(
  displayLarge: 34.0,
  titleLarge: 20.0,
  bodyLarge: 16.0,
  bodyMedium: 14.0,
  labelSmall: 12.0,
);
