import 'package:flutter/material.dart';

class AppTextStyles extends ThemeExtension<AppTextStyles> {
  final TextStyle s24BoldYdestreet;
  final TextStyle s12Bold;
  final TextStyle s12Medium;

  AppTextStyles({
    required this.s24BoldYdestreet,
    required this.s12Bold,
    required this.s12Medium,
  });
  
  @override
  ThemeExtension<AppTextStyles> copyWith({
    TextStyle? s24BoldYdestreet,
    TextStyle? s12Bold,
    TextStyle? s12Medium,
  }) {
    return AppTextStyles(
      s24BoldYdestreet: s24BoldYdestreet ?? this.s24BoldYdestreet,
      s12Bold: s12Bold ?? this.s12Bold,
      s12Medium: s12Medium ?? this.s12Medium,
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
    );
  }
}

final textStyles = AppTextStyles(
  s24BoldYdestreet: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Ydestreet'),
  s12Bold: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
  s12Medium: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
);
