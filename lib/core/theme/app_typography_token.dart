import 'dart:ui';

import 'package:flutter/material.dart';

@immutable
class TypographyTokens extends ThemeExtension<TypographyTokens> {
  final double displayLarge;
  final double titleLarge;
  final double bodyLarge;
  final double bodyMedium;
  final double labelSmall;

  const TypographyTokens({
    required this.displayLarge,
    required this.titleLarge,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.labelSmall,
  });

  @override
  TypographyTokens copyWith({
    double? displayLarge,
    double? titleLarge,
    double? bodyLarge,
    double? bodyMedium,
    double? labelSmall,
  }) {
    return TypographyTokens(
      displayLarge: displayLarge ?? this.displayLarge,
      titleLarge: titleLarge ?? this.titleLarge,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      labelSmall: labelSmall ?? this.labelSmall,
    );
  }

  @override
  TypographyTokens lerp(ThemeExtension<TypographyTokens>? other, double t) {
    if (other is! TypographyTokens) return this;
    return TypographyTokens(
      displayLarge: lerpDouble(displayLarge, other.displayLarge, t)!,
      titleLarge: lerpDouble(titleLarge, other.titleLarge, t)!,
      bodyLarge: lerpDouble(bodyLarge, other.bodyLarge, t)!,
      bodyMedium: lerpDouble(bodyMedium, other.bodyMedium, t)!,
      labelSmall: lerpDouble(labelSmall, other.labelSmall, t)!,
    );
  }
}
