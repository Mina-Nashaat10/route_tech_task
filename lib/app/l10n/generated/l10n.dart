// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `App Name`
  String get app_name {
    return Intl.message(
      'App Name',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `Request successful.`
  String get success {
    return Intl.message(
      'Request successful.',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Bad request. Please check your input and try again.`
  String get bad_request_error {
    return Intl.message(
      'Bad request. Please check your input and try again.',
      name: 'bad_request_error',
      desc: '',
      args: [],
    );
  }

  /// `Bad response. The server returned an invalid response.`
  String get bad_response_error {
    return Intl.message(
      'Bad response. The server returned an invalid response.',
      name: 'bad_response_error',
      desc: '',
      args: [],
    );
  }

  /// `No content found matching your request.`
  String get no_content {
    return Intl.message(
      'No content found matching your request.',
      name: 'no_content',
      desc: '',
      args: [],
    );
  }

  /// `Access forbidden. You do not have permission to access this resource.`
  String get forbidden_error {
    return Intl.message(
      'Access forbidden. You do not have permission to access this resource.',
      name: 'forbidden_error',
      desc: '',
      args: [],
    );
  }

  /// `Unauthorized access. Please log in with proper credentials.`
  String get unauthorized_error {
    return Intl.message(
      'Unauthorized access. Please log in with proper credentials.',
      name: 'unauthorized_error',
      desc: '',
      args: [],
    );
  }

  /// `Resource not found. The requested resource could not be found.`
  String get not_found_error {
    return Intl.message(
      'Resource not found. The requested resource could not be found.',
      name: 'not_found_error',
      desc: '',
      args: [],
    );
  }

  /// `Conflict error. There is a conflict with the current state of the resource.`
  String get conflict_error {
    return Intl.message(
      'Conflict error. There is a conflict with the current state of the resource.',
      name: 'conflict_error',
      desc: '',
      args: [],
    );
  }

  /// `Internal server error. Please try again later.`
  String get internal_server_error {
    return Intl.message(
      'Internal server error. Please try again later.',
      name: 'internal_server_error',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error occurred. Please contact support for assistance.`
  String get unknown_error {
    return Intl.message(
      'Unknown error occurred. Please contact support for assistance.',
      name: 'unknown_error',
      desc: '',
      args: [],
    );
  }

  /// `Request timeout. The request took too long to process.`
  String get timeout_error {
    return Intl.message(
      'Request timeout. The request took too long to process.',
      name: 'timeout_error',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred. Please try again later.`
  String get default_error {
    return Intl.message(
      'An error occurred. Please try again later.',
      name: 'default_error',
      desc: '',
      args: [],
    );
  }

  /// `Cache error. Unable to retrieve data from cache.`
  String get cache_error {
    return Intl.message(
      'Cache error. Unable to retrieve data from cache.',
      name: 'cache_error',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection. Please check your internet connection and try again.`
  String get no_internet_error {
    return Intl.message(
      'No internet connection. Please check your internet connection and try again.',
      name: 'no_internet_error',
      desc: '',
      args: [],
    );
  }

  /// `Data processing error. Unable to process the data.`
  String get data_processing_error {
    return Intl.message(
      'Data processing error. Unable to process the data.',
      name: 'data_processing_error',
      desc: '',
      args: [],
    );
  }

  /// `No items found.`
  String get no_items_found {
    return Intl.message(
      'No items found.',
      name: 'no_items_found',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get try_again {
    return Intl.message(
      'Try again',
      name: 'try_again',
      desc: '',
      args: [],
    );
  }

  /// `Please wait: {percent}%`
  String download_button_progress_title(Object percent) {
    return Intl.message(
      'Please wait: $percent%',
      name: 'download_button_progress_title',
      desc: '',
      args: [percent],
    );
  }

  /// `EGP`
  String get egp {
    return Intl.message(
      'EGP',
      name: 'egp',
      desc: '',
      args: [],
    );
  }

  /// `Review`
  String get review {
    return Intl.message(
      'Review',
      name: 'review',
      desc: '',
      args: [],
    );
  }

  /// `what do you search for?`
  String get search_hint {
    return Intl.message(
      'what do you search for?',
      name: 'search_hint',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar', countryCode: 'EG'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
