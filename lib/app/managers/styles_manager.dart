
import 'package:route_tech_task/app/dependencies_injection.dart';
import 'package:route_tech_task/app/managers/language_manager.dart';
import 'package:route_tech_task/app/managers/theme_manager.dart';
import 'package:route_tech_task/app/managers/values_manager.dart';
import 'package:flutter/material.dart';

import 'font_manager.dart';

class StylesMaganer {
  
  static TextStyle displayLarge({Color? color, double? fontSize})=> TextStyle(
    fontFamily: instance<LanguageManager>().fontFamiliy, 
    color: color ?? instance<ThemeManager>().color.secondary, 
    fontSize: fontSize ?? AppSize.s57, 
    letterSpacing: AppSize.s0, 
    fontWeight: FontWeights.regular,
  );
  
  static TextStyle displayMedium({Color? color, double? fontSize})=>  TextStyle(
    fontFamily: instance<LanguageManager>().fontFamiliy, 
    color: color ?? instance<ThemeManager>().color.secondary, 
    fontSize: fontSize ?? AppSize.s45, 
    letterSpacing: AppSize.s0, 
    fontWeight: FontWeights.regular,
  );

  static TextStyle displaySmall({Color? color, double? fontSize})=>  TextStyle(
    fontFamily: instance<LanguageManager>().fontFamiliy, 
    color: color ?? instance<ThemeManager>().color.secondary, 
    fontSize: fontSize ?? AppSize.s36, 
    letterSpacing: AppSize.s0, 
    fontWeight: FontWeights.regular,
  );

  static TextStyle headlineLarge({Color? color, double? fontSize})=>  TextStyle(
    fontFamily: instance<LanguageManager>().fontFamiliy, 
    color: color ?? instance<ThemeManager>().color.secondary, 
    fontSize: fontSize ?? AppSize.s32, 
    letterSpacing: AppSize.s0, 
    fontWeight: FontWeights.regular,
  );

  static TextStyle headlineMedium({Color? color, double? fontSize})=>  TextStyle(
    fontFamily: instance<LanguageManager>().fontFamiliy, 
    color: color ?? instance<ThemeManager>().color.secondary, 
    fontSize: fontSize ?? AppSize.s28, 
    letterSpacing: AppSize.s0, 
    fontWeight: FontWeights.regular,
  );

  static TextStyle headlineSmall({Color? color, double? fontSize})=>  TextStyle(
    fontFamily: instance<LanguageManager>().fontFamiliy, 
    color: color ?? instance<ThemeManager>().color.secondary, 
    fontSize: fontSize ?? AppSize.s24, 
    letterSpacing: AppSize.s0, 
    fontWeight: FontWeights.regular,
  );

  static TextStyle titleLarge({Color? color, double? fontSize})=>  TextStyle(
    fontFamily: instance<LanguageManager>().fontFamiliy, 
    color: color ?? instance<ThemeManager>().color.secondary, 
    fontSize: fontSize ?? AppSize.s22, 
    letterSpacing: AppSize.s0, 
    fontWeight: FontWeights.medium
  );

  static TextStyle titleMedium({Color? color, double? fontSize})=>  TextStyle(
    fontFamily: instance<LanguageManager>().fontFamiliy, 
    color: color ?? instance<ThemeManager>().color.secondary, 
    fontSize: fontSize ?? AppSize.s16, 
    letterSpacing: AppSize.s0, 
    fontWeight: FontWeights.medium
  );

  static TextStyle titleSmall({Color? color, double? fontSize})=>  TextStyle(
    fontFamily: instance<LanguageManager>().fontFamiliy, 
    color: color ?? instance<ThemeManager>().color.secondary, 
    fontSize: fontSize ?? AppSize.s14, 
    letterSpacing: AppSize.s0, 
    fontWeight: FontWeights.medium
  );

  static TextStyle bodyLarge({Color? color, double? fontSize})=>  TextStyle(
    fontFamily: instance<LanguageManager>().fontFamiliy,
    color: color ?? instance<ThemeManager>().color.secondary,
    fontSize: fontSize ?? AppSize.s16, 
    letterSpacing: AppSize.s0,
    fontWeight: FontWeights.regular,
  );

  static TextStyle bodyMedium({Color? color, double? fontSize})=>  TextStyle(
    fontFamily: instance<LanguageManager>().fontFamiliy,
    color: color ?? instance<ThemeManager>().color.secondary, 
    fontSize: fontSize ?? AppSize.s14, 
    letterSpacing: AppSize.s0, 
    fontWeight: FontWeights.regular,
  );
  
  static TextStyle bodySmall({Color? color, double? fontSize})=>  TextStyle(
    fontFamily: instance<LanguageManager>().fontFamiliy, 
    color: color ?? instance<ThemeManager>().color.secondary, 
    fontSize: fontSize ?? AppSize.s12, 
    letterSpacing: AppSize.s0, 
    fontWeight: FontWeights.regular,
  );

  static TextStyle labelLarge({Color? color, double? fontSize})=>  TextStyle(
    fontFamily: instance<LanguageManager>().fontFamiliy, 
    color: color ?? instance<ThemeManager>().color.secondary, 
    fontSize: fontSize ?? AppSize.s14, 
    letterSpacing: AppSize.s0, 
    fontWeight: FontWeights.medium,
  );

  static TextStyle labelMedium({Color? color, double? fontSize})=>  TextStyle(
    fontFamily: instance<LanguageManager>().fontFamiliy, 
    color: color ?? instance<ThemeManager>().color.secondary, 
    fontSize: fontSize ?? AppSize.s12, 
    letterSpacing: AppSize.s0, 
    fontWeight: FontWeights.medium,
  );

  static TextStyle labelSmall({Color? color, double? fontSize})=>  TextStyle(
    fontFamily: instance<LanguageManager>().fontFamiliy, 
    color: color ?? instance<ThemeManager>().color.secondary, 
    fontSize: fontSize ?? AppSize.s11, 
    letterSpacing: AppSize.s0, 
    fontWeight: FontWeights.medium,
  );
}