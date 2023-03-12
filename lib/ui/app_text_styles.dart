import 'package:flutter/material.dart';

class AppTextStyles extends ThemeExtension<AppTextStyles> {
  final TextStyle s24BoldYdestreet;
  final TextStyle s12Bold;
  final TextStyle s12Medium;
  final TextStyle s11Bold;
  final TextStyle s10Medium;

  AppTextStyles({
    required this.s24BoldYdestreet,
    required this.s12Bold,
    required this.s12Medium,
    required this.s11Bold,
    required this.s10Medium,
  });
  
  @override
  ThemeExtension<AppTextStyles> copyWith({
    TextStyle? s24BoldYdestreet,
    TextStyle? s12Bold,
    TextStyle? s12Medium,
    TextStyle? s11Bold,
    TextStyle? s10Medium,
  }) {
    return AppTextStyles(
      s24BoldYdestreet: s24BoldYdestreet ?? this.s24BoldYdestreet,
      s12Bold: s12Bold ?? this.s12Bold,
      s12Medium: s12Medium ?? this.s12Medium,
      s11Bold: s11Bold ?? this.s11Bold,
      s10Medium: s10Medium ?? this.s10Medium,
    );
  }
  
  @override
  ThemeExtension<AppTextStyles> lerp(covariant ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) {
      return this;
    }
    return AppTextStyles(
      s24BoldYdestreet: other.s24BoldYdestreet,
      s12Bold: other.s12Bold,
      s12Medium: other.s12Medium,
      s11Bold: other.s11Bold,
      s10Medium: other.s10Medium,
    );
  }
}

final textStyles = AppTextStyles(
  s24BoldYdestreet: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Ydestreet'),
  s12Bold: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
  s12Medium: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
  s11Bold: const TextStyle(fontSize: 11, fontWeight: FontWeight.w700),
  s10Medium: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
);
