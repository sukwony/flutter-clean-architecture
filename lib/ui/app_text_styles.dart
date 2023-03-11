import 'package:flutter/material.dart';

class AppTextStyles extends ThemeExtension<AppTextStyles> {
  final TextStyle s24BoldYdestreet;

  AppTextStyles({
    this.s24BoldYdestreet = const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Ydestreet')
  });
  
  @override
  ThemeExtension<AppTextStyles> copyWith({
    TextStyle? s24BoldYdestreet
  }) {
    return AppTextStyles(
      s24BoldYdestreet: s24BoldYdestreet ?? this.s24BoldYdestreet
    );
  }
  
  @override
  ThemeExtension<AppTextStyles> lerp(covariant ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) {
      return this;
    }
    return AppTextStyles(
      s24BoldYdestreet: other.s24BoldYdestreet
    );
  }
}

final textStyles = AppTextStyles();
