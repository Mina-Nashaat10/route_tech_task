
class Constants {
  static const String appName = 'CoreTestApp';
  static const String appVersion = '1.0.0';

  static const String baseUrl = 'https://dummyjson.com/';
  
  static const Duration apiSendTimeout = Duration(milliseconds: 60000);
  static const Duration apiReceiveTimeout = Duration(milliseconds: 60000);

  static const String contentTypeKey = 'content-Type';
  static const String contentTypeValue = 'application/json';
  static const String acceptKey = 'accept';
  static const String acceptValue = 'accept';
  static const String authorizationKey = 'authorization';
  static const String languageKey = 'language';

  static const double kAppBarHeight = 56.0;
  static const double kFABHeight = 56.0;
  static const double kBottomNavBarHeight = 75.0;
  static const double kButtonHeight = 48.0;

  // shared preferences keys
  static const String languagePrefKey = 'language';
  static const String themeColorPrefKey = 'theme_color';
}