
import 'dart:ui';

import 'package:route_tech_task/app/constants.dart';
import 'package:route_tech_task/app/dependencies_injection.dart';
import 'package:route_tech_task/app/enums.dart';
import 'package:route_tech_task/app/managers/language_manager.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension SizeBox on num? {
  SizedBox get h => SizedBox(height: this?.toDouble());
  SizedBox get w => SizedBox(width: this?.toDouble());
}


extension ContextServices on BuildContext {
  ThemeData get theme => Theme.of(this);
  FlutterView get view => View.of(this);

  EdgeInsets get viewInsets => MediaQuery.viewInsetsOf(this);
  Size get screenSize => MediaQuery.sizeOf(this);

  Orientation get orientation => MediaQuery.orientationOf(this);
  bool get isPortrait => MediaQuery.maybeOrientationOf(this) == Orientation.portrait;

  double get _kBottomNavBarHeight => Constants.kBottomNavBarHeight;

  double get bottomPadding => Constants.kFABHeight + getBottomNavBar + (view.viewPadding.bottom / 2.5);

  double get getBottomNavBar => isTablet ? _kBottomNavBarHeight * 1.5 : _kBottomNavBarHeight;

  double get smallSide => isPortrait ? screenSize.width : screenSize.height;
  double get largeSide => isPortrait ? screenSize.height : screenSize.width;
  double get widthAccordingOrientation => isPortrait ? screenSize.width : screenSize.height;
  double get heightAccordingOrientation => isPortrait ? screenSize.height : screenSize.width;

  double get statusBarHeight => switch (view.viewPadding.bottom) {
    0.0 => view.viewPadding.top * 0.33, // Android
    _ => view.viewPadding.bottom / 2, // IOS
  };

  bool get isMobile => getDeviceScreenType == DeviceScreenType.mobile;
  bool get isTablet => getDeviceScreenType == DeviceScreenType.tablet;
  

  double get pixelRatio => view.devicePixelRatio;

  //Size in physical pixels
  Size get physicalScreenSize => view.physicalSize;
  double get physicalWidth => physicalScreenSize.width;
  double get physicalHeight => physicalScreenSize.height;

  //Size in logical pixels
  Size get logicalScreenSize => physicalScreenSize / pixelRatio;
  double get logicalWidth => logicalScreenSize.width;
  double get logicalHeight => logicalScreenSize.height;

  DeviceScreenType get getDeviceScreenType {
    switch (smallSide) {
      case <= 480:
        return DeviceScreenType.mobile;
      default:
        return DeviceScreenType.tablet;
    }
  }

  bool isSameDate(DateTime date1, DateTime date2) => date1.year == date2.year && date1.month == date2.month && date1.day == date2.day;

  // app styles
  TextStyle? get headlineL => Theme.of(this).textTheme.headlineLarge;
  TextStyle? get headlineM => Theme.of(this).textTheme.headlineMedium;
  TextStyle? get headlineS => Theme.of(this).textTheme.headlineSmall;
  TextStyle? get displayL  => Theme.of(this).textTheme.displayLarge;
  TextStyle? get displayM  => Theme.of(this).textTheme.displayMedium;
  TextStyle? get displayS  => Theme.of(this).textTheme.displaySmall;
  TextStyle? get bodyL     => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get bodyM     => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get bodyS     => Theme.of(this).textTheme.bodySmall;
  TextStyle? get titleL    => Theme.of(this).textTheme.titleLarge;
  TextStyle? get titleM    => Theme.of(this).textTheme.titleMedium;
  TextStyle? get titleS    => Theme.of(this).textTheme.titleSmall;
  TextStyle? get labelL    => Theme.of(this).textTheme.labelLarge;
  TextStyle? get labelM    => Theme.of(this).textTheme.labelMedium;
  TextStyle? get labelS    => Theme.of(this).textTheme.labelSmall;
}

extension StringServices on String? {
  bool get isNotNull => this != null && this!.isNotEmpty;

  String formatDate({String pattern = "dd-MMMM-yyyy"}) {
    final date = DateTime.parse(this!);
    return DateFormat(pattern).format(date);
  }
}

extension DateTimeServices on DateTime? {
  String? formatTime({String? pattern = "hh:mm:ss a"}) {
    if (this != null) {
      return DateFormat(pattern).format(this!);
    }
    return null;
  }

  String? formatDate({String pattern = "dd-MMMM-yyyy", String? locale}) {
    if (this != null) {
      return DateFormat(pattern, locale).format(this!);
    }
    return null;
  }

  String formatDateTime({String pattern = "dd MMMM - hh:mm a", String? locale}) {
    return DateFormat(pattern, locale).format(this!);
  }
}

extension NumberServices on num {
  String formatNumber({Language? lang}) {
    String? languageCode = (lang?.languageCode) ?? instance<LanguageManager>().currentLang.languageCode;
    return NumberFormat.decimalPattern(languageCode).format(num.parse(toString()));
  }
}