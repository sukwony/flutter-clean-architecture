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
  final Color backgroundBlack;
  final Color textWhite;
  final Color textBlackOnWhite;
  final Color backgroundLightGreyOnWhite;

  AppColors({
    required this.backgroundWhite,
    required this.backgroundBlack,
    required this.textWhite,
    required this.textBlackOnWhite,
    required this.backgroundLightGreyOnWhite,
  });


  @override
  ThemeExtension<AppColors> copyWith({
    Color? backgroundWhite,
    Color? backgroundBlack,
    Color? textWhite,
    Color? textBlackOnWhite,
    Color? backgroundLightGreyOnWhite
  }) {
    return AppColors(
      backgroundWhite: backgroundWhite ?? this.backgroundWhite,
      backgroundBlack: backgroundBlack ?? this.backgroundBlack,
      textWhite: textWhite ?? this.textWhite,
      textBlackOnWhite: textBlackOnWhite ?? this.textBlackOnWhite,
      backgroundLightGreyOnWhite: backgroundLightGreyOnWhite ?? this.backgroundLightGreyOnWhite
    );
  }

  @override
  ThemeExtension<AppColors> lerp(covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      backgroundWhite: Color.lerp(backgroundWhite, other.backgroundWhite, t) ?? backgroundWhite,
      backgroundBlack: Color.lerp(backgroundBlack, other.backgroundBlack, t) ?? backgroundBlack,
      textWhite: Color.lerp(textWhite, other.textWhite, t) ?? textWhite,
      textBlackOnWhite: Color.lerp(textBlackOnWhite, other.textBlackOnWhite, t) ?? textBlackOnWhite,
      backgroundLightGreyOnWhite: Color.lerp(backgroundLightGreyOnWhite, other.backgroundLightGreyOnWhite, t) ?? backgroundLightGreyOnWhite,
    );
  }
}

final lightColors = AppColors(
    backgroundWhite: Colors.white,
    backgroundBlack: _black,
    textWhite: Colors.white,
    textBlackOnWhite: _black,
    backgroundLightGreyOnWhite: _lightGrey,
);
final darkColors = AppColors(
  backgroundWhite: _greyTwo,
  backgroundBlack: _black,
  textWhite: Colors.white,
  textBlackOnWhite: Colors.white,
  backgroundLightGreyOnWhite: _grey,
);
