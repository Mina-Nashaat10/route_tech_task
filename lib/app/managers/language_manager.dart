
// ignore_for_file: constant_identifier_names

import 'package:route_tech_task/app/constants.dart';
import 'package:route_tech_task/data/data_source/local_data_source/shared_preference_source.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

enum AppLanguages {
  ENGLISH,
  ARABIC;
}

class Language {
  final String languageCode;
  final String countryCode;
  final AppLanguages language;
  final Locale locale;
  final String displayName;
  final String fontFamiliy;

  Language({
    required this.languageCode,
    required this.countryCode,
    required this.language,
    required this.locale,
    required this.displayName,
    required this.fontFamiliy,
  });
}

class LanguageManager {

  final SharedPreferenSource _sharedPreferenSource;
  late final Language _defaultLanguage;
  late final Language _savedLanguage;

  LanguageManager(this._sharedPreferenSource) {
    buildAppLanguages();
  }

  List<Language> _languages = [];

  List<Language> get languages => _languages;
  
  void buildAppLanguages() {
    _languages = [
      Language(
        languageCode: 'en',
        countryCode: 'US',
        language: AppLanguages.ENGLISH,
        locale: const Locale('en', 'US'),
        displayName: 'S.current.english',
        fontFamiliy: 'Roboto',
      ),
      Language(
        languageCode: 'ar_EG',
        countryCode: 'SA',
        language: AppLanguages.ARABIC,
        locale: const Locale('ar', 'SA'),
        displayName: 'S.current.arabic',
        fontFamiliy: 'Cairo',
      ),
    ];

    _defaultLanguage = _languages.first;
    _savedLanguage = _getSavedLanguage();
  }
  
  Language get defaultLang => _defaultLanguage;

  Language get currentLang => _savedLanguage;

  String get fontFamiliy => currentLang.fontFamiliy;
  
  Language getLanguageByCode(String code) {
    return _languages.firstWhere((element) => element.languageCode == code, orElse: () => defaultLang);
  }

  Language getLanguageByLocale(Locale locale) {
    return _languages.firstWhere((element) => element.locale == locale, orElse: () => defaultLang);
  }

  Language _getSavedLanguage() {
    String savedLanguageCode = _sharedPreferenSource.getString(Constants.languagePrefKey) ?? defaultLang.languageCode;
    return getLanguageByCode(savedLanguageCode);
  }

  Future<void> saveLanguage(Language language) async {
    await _sharedPreferenSource.saveString(Constants.languagePrefKey, language.languageCode);
    _savedLanguage = language;
  }

  bool get isRTL => intl.Bidi.isRtlLanguage(_savedLanguage.languageCode);
}