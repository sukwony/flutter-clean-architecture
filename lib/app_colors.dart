import 'package:flutter/material.dart';

const _lightGrey = Color(0xffe6e6e6);
const _lightGreyTwo = Color(0xffababab);
const _grey = Color(0xff565656);
const _greyTwo = Color(0xff2d2d2d);
const _black = Color(0xff181717);
const _red = Color(0xffff366e);
const _lightRed = Color(0xffff5b89);
const _green = Color(0xff00ff8d);
const _purple = Color(0xff7f50ff);
const _lightPurple = Color(0xff956fff);

class AppColors extends ThemeExtension<AppColors> {
  final Color backgroundWhite;
  final Color textBlackOnWhite;

  AppColors({
    this.backgroundWhite = Colors.white,
    this.textBlackOnWhite = _black
  });


  @override
  ThemeExtension<AppColors> copyWith({
    Color? backgroundWhite,
    Color? textBlackOnWhite
  }) {
    return AppColors(
      backgroundWhite: backgroundWhite ?? this.backgroundWhite,
      textBlackOnWhite: textBlackOnWhite ?? this.textBlackOnWhite
    );
  }

  @override
  ThemeExtension<AppColors> lerp(covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      backgroundWhite: Color.lerp(backgroundWhite, other.backgroundWhite, t) ?? backgroundWhite,
      textBlackOnWhite: Color.lerp(textBlackOnWhite, other.textBlackOnWhite, t) ?? textBlackOnWhite,
    );
  }
}

final lightColors = AppColors();
final darkColors = AppColors(
  backgroundWhite: _greyTwo,
  textBlackOnWhite: Colors.white
);