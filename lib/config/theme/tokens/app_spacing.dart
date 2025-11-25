import 'dart:ui';

import 'package:flutter/material.dart';

class AppSpacing extends ThemeExtension<AppSpacing> {
  final double xs;
  final double s;
  final double m;
  final double l;
  final double xl;

  const AppSpacing({
    required this.xs,
    required this.s,
    required this.m,
    required this.l,
    required this.xl,
  });

  @override
  ThemeExtension<AppSpacing> copyWith(
      {double? xs, double? s, double? m, double? l, double? xl}) {
    return AppSpacing(
        xs: xs ?? this.xs,
        s: s ?? this.s,
        m: m ?? this.m,
        l: l ?? this.l,
        xl: xl ?? this.xl);
  }

  @override
  ThemeExtension<AppSpacing> lerp(
      covariant ThemeExtension<AppSpacing>? other, double t) {
    if (other is! AppSpacing) return this;

    return AppSpacing(
      xs: lerpDouble(xs, other.xs, t)!,
      s: lerpDouble(s, other.s, t)!,
      m: lerpDouble(m, other.m, t)!,
      l: lerpDouble(l, other.l, t)!,
      xl: lerpDouble(xl, other.xl, t)!,
    );
  }
}

const defaultAppSpacing = AppSpacing(
  xs: 4,
  s: 8,
  m: 16,
  l: 24,
  xl: 32,
);
