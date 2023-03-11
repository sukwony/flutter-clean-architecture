import 'package:flutter/material.dart';

class AppTextStyles extends ThemeExtension<AppTextStyles> {
  final TextStyle s24BoldYdestreet;
  final TextStyle s12Medium;

  AppTextStyles({
    required this.s24BoldYdestreet,
    required this.s12Medium
  });
  
  @override
  ThemeExtension<AppTextStyles> copyWith({
    TextStyle? s24BoldYdestreet,
    TextStyle? s12Medium
  }) {
    return AppTextStyles(
      s24BoldYdestreet: s24BoldYdestreet ?? this.s24BoldYdestreet,
      s12Medium: s12Medium ?? this.s12Medium
    );
  }
  
  @override
  ThemeExtension<AppTextStyles> lerp(covariant ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) {
      return this;
    }
    return AppTextStyles(
      s24BoldYdestreet: other.s24BoldYdestreet,
      s12Medium: other.s12Medium
    );
  }
}

const _base = TextStyle(fontFamily: 'Montserrat', fontFamilyFallback: ['NotoSansKR']);

final textStyles = AppTextStyles(
  s24BoldYdestreet: _base.copyWith(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Ydestreet'),
  s12Medium: _base.copyWith(fontSize: 12, fontWeight: FontWeight.w500)
);
