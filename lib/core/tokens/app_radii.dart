import 'dart:ui';

import 'package:flutter/material.dart';

class AppRadii extends ThemeExtension<AppRadii> {
  final double xs;
  final double s;
  final double m;
  final double l;
  final double xl;
  final double pill;

  const AppRadii({
    required this.xs,
    required this.s,
    required this.m,
    required this.l,
    required this.xl,
    required this.pill,
  });

  @override
  ThemeExtension<AppRadii> copyWith(
      {double? xs, double? s, double? m, double? l, double? xl, double? pill}) {
    return AppRadii(
      xs: xs ?? this.xs,
      s: s ?? this.s,
      m: m ?? this.m,
      l: l ?? this.l,
      xl: xl ?? this.xl,
      pill: pill ?? this.pill,
    );
  }

  @override
  ThemeExtension<AppRadii> lerp(
      covariant ThemeExtension<AppRadii>? other, double t) {
    if (other is! AppRadii) return this;

    return AppRadii(
      xs: lerpDouble(xs, other.xs, t)!,
      s: lerpDouble(s, other.s, t)!,
      m: lerpDouble(m, other.m, t)!,
      l: lerpDouble(l, other.l, t)!,
      xl: lerpDouble(xl, other.xl, t)!,
      pill: lerpDouble(pill, other.pill, t)!,
    );
  }
}

const defaultAppRadii = AppRadii(
  xs: 4,
  s: 8,
  m: 16,
  l: 24,
  xl: 32,
  pill: 9999,
);
