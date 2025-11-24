import 'dart:ui';

import 'package:flutter/material.dart';

class AppElevation extends ThemeExtension<AppElevation> {
  final double low;
  final double medium;
  final double high;

  const AppElevation({
    required this.low,
    required this.medium,
    required this.high,
  });
  @override
  ThemeExtension<AppElevation> copyWith({
    double? low,
    double? medium,
    double? high,
  }) {
    return AppElevation(
      low: low ?? this.low,
      medium: medium ?? this.medium,
      high: high ?? this.high,
    );
  }

  @override
  ThemeExtension<AppElevation> lerp(
      covariant ThemeExtension<AppElevation>? other, double t) {
    if (other is! AppElevation) return this;
    return AppElevation(
      low: lerpDouble(low, other.low, t)!,
      medium: lerpDouble(medium, other.medium, t)!,
      high: lerpDouble(high, other.high, t)!,
    );
  }
}

const defaultAppElevation = AppElevation(
  low: 2,
  medium: 4,
  high: 8,
);
