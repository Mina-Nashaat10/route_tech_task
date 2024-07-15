
import 'package:route_tech_task/app/constants.dart';
import 'package:route_tech_task/app/dependencies_injection.dart';
import 'package:route_tech_task/app/managers/font_manager.dart';
import 'package:route_tech_task/app/managers/styles_manager.dart';
import 'package:route_tech_task/app/managers/values_manager.dart';
import 'package:route_tech_task/app/theme/color/dark_theme_color.dart';
import 'package:route_tech_task/app/theme/color/light_theme_color.dart';
import 'package:route_tech_task/app/theme/color/theme_color_interface.dart';
import 'package:route_tech_task/data/data_source/local_data_source/shared_preference_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeManager {

  final SharedPreferenSource _sharedPreferenSource;

  late ThemeColorInterface color;
  late ThemeMode _mode;

  ThemeMode get mode => _mode;

  bool get isDark => _mode == ThemeMode.dark;
  bool get isLight => _mode == ThemeMode.light;

  ThemeManager(this._sharedPreferenSource) {
    setMode();
    color = _mode == ThemeMode.light ? DarkThemeColor() : LightThemeColor();
  }

  void setMode() {
    int value = _sharedPreferenSource.getInt(Constants.themeColorPrefKey) ?? AppSize.s0.toInt();
    _mode = value < ThemeMode.values.length ? ThemeMode.values[value] : ThemeMode.system;
  }

  SystemUiOverlayStyle get systemSatusDefaultColor {
    return SystemUiOverlayStyle(
      statusBarColor: color.background,
      statusBarBrightness: isDark ? Brightness.dark : Brightness.light,
      statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
      systemStatusBarContrastEnforced: true,

      systemNavigationBarColor: color.background,
      systemNavigationBarDividerColor: isDark ? color.background : color.secondary,
      systemNavigationBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
      systemNavigationBarContrastEnforced: true,
    );
  }

  ThemeData get theme {
    final textTheme = appTextTheme;
    return ThemeData(
      // main colors
      primaryColor: color.primary,
      disabledColor: color.grey,
      // ripple effect color
      // cardview theme
      cardTheme: CardTheme(
        color: color.background,
        shadowColor: color.grey,
        elevation: AppSize.s4,
      ),
      // app bar theme
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: color.primary,
        elevation: AppSize.s4,
        titleTextStyle: StylesMaganer.titleMedium(color: instance<ThemeManager>().color.background),
      ),
      // button theme
      buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: color.grey,
        buttonColor: color.primary,
      ),

      // elevated button them
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: StylesMaganer.titleMedium(color: instance<ThemeManager>().color.background, fontSize: FontSize.s17),
          elevation: AppSize.s4,
          backgroundColor: color.primary,
          surfaceTintColor: color.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s12)),
        ),
      ),

      textTheme: textTheme,

      // input decoration theme (text form field)
      inputDecorationTheme: InputDecorationTheme(
        // content padding
        contentPadding: const EdgeInsets.all(AppPadding.p8),

        // hint style
        hintStyle: StylesMaganer.titleMedium(color: color.grey.withOpacity(0.6), fontSize: FontSize.s14),
        labelStyle: StylesMaganer.labelMedium(color: color.grey, fontSize: FontSize.s14),
        errorStyle: StylesMaganer.titleMedium(color: color.error),

        // enabled border style
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color.primary, width: AppSize.s1),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),

        // focused border style
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color.primary, width: AppSize.s1),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),

        // error border style
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color.error, width: AppSize.s1),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        // focused border style
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color.primary, width: AppSize.s1),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
        ),

        prefixIconColor: color.primary,
      ),
    );
  }

  TextTheme get appTextTheme {
    return TextTheme(
      displayLarge: StylesMaganer.displayLarge(),
      displayMedium: StylesMaganer.displayMedium(),
      displaySmall: StylesMaganer.displaySmall(),
      headlineLarge: StylesMaganer.headlineLarge(),
      headlineMedium: StylesMaganer.headlineMedium(),
      headlineSmall: StylesMaganer.headlineSmall(),
      titleLarge: StylesMaganer.titleLarge(),
      titleMedium: StylesMaganer.titleMedium(),
      titleSmall: StylesMaganer.titleSmall(),
      bodyLarge: StylesMaganer.bodyLarge(),
      bodyMedium: StylesMaganer.bodyMedium(),
      bodySmall: StylesMaganer.bodySmall(),
      labelLarge: StylesMaganer.labelLarge(),
      labelMedium: StylesMaganer.labelMedium(),
      labelSmall: StylesMaganer.labelSmall(),
    );
  }
}