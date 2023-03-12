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
  final Color textGreyOnWhite;
  final Color textBlackOnWhite;
  final Color backgroundLightGreyOnWhite;
  final Color iconGreyOnLightGrey;

  AppColors({
    required this.backgroundWhite,
    required this.backgroundBlack,
    required this.textWhite,
    required this.textGreyOnWhite,
    required this.textBlackOnWhite,
    required this.backgroundLightGreyOnWhite,
    required this.iconGreyOnLightGrey,
  });


  @override
  ThemeExtension<AppColors> copyWith({
    Color? backgroundWhite,
    Color? backgroundBlack,
    Color? textWhite,
    Color? textGreyOnWhite,
    Color? textBlackOnWhite,
    Color? backgroundLightGreyOnWhite,
    Color? iconGreyOnLightGrey,
  }) {
    return AppColors(
      backgroundWhite: backgroundWhite ?? this.backgroundWhite,
      backgroundBlack: backgroundBlack ?? this.backgroundBlack,
      textWhite: textWhite ?? this.textWhite,
      textGreyOnWhite: textGreyOnWhite ?? this.textGreyOnWhite,
      textBlackOnWhite: textBlackOnWhite ?? this.textBlackOnWhite,
      backgroundLightGreyOnWhite: backgroundLightGreyOnWhite ?? this.backgroundLightGreyOnWhite,
      iconGreyOnLightGrey: iconGreyOnLightGrey ?? this.iconGreyOnLightGrey,
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
      textGreyOnWhite: Color.lerp(textGreyOnWhite, other.textGreyOnWhite, t) ?? textGreyOnWhite,
      textBlackOnWhite: Color.lerp(textBlackOnWhite, other.textBlackOnWhite, t) ?? textBlackOnWhite,
      backgroundLightGreyOnWhite: Color.lerp(backgroundLightGreyOnWhite, other.backgroundLightGreyOnWhite, t) ?? backgroundLightGreyOnWhite,
      iconGreyOnLightGrey: Color.lerp(iconGreyOnLightGrey, other.iconGreyOnLightGrey, t) ?? iconGreyOnLightGrey,
    );
  }
}

final lightColors = AppColors(
  backgroundWhite: Colors.white,
  backgroundBlack: _black,
  textWhite: Colors.white,
  textGreyOnWhite: _grey,
  textBlackOnWhite: _black,
  backgroundLightGreyOnWhite: _lightGrey,
  iconGreyOnLightGrey: _grey,
);
final darkColors = AppColors(
  backgroundWhite: _greyTwo,
  backgroundBlack: _black,
  textWhite: Colors.white,
  textGreyOnWhite: _lightGreyTwo,
  textBlackOnWhite: Colors.white,
  backgroundLightGreyOnWhite: _grey,
  iconGreyOnLightGrey: _lightGrey
);
