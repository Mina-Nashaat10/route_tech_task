
import 'package:route_tech_task/app/theme/color/theme_color_interface.dart';
import 'package:flutter/material.dart';

class DarkThemeColor extends ThemeColorInterface {
  @override
  Color get background => const Color(0xFF242526);

  @override
  Color get primary   => const Color(0xff023e87);

  @override
  Color get secondary => const Color(0xFFE6EAED);

  @override
  Color get grey      => const Color(0xFFB1B3B8);

  @override
  Color get success   => const Color(0xFF00FF00);

  @override
  Color get error     => const Color(0xFFFD375F);

  @override
  Color get warning   => const Color(0xFFFF9100);

  @override
  Color get info      => const Color(0xff007aff);
  
  @override
  Color get blue      => const Color(0xFF64D2FF);
}