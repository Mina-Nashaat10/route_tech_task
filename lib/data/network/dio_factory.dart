
import 'package:route_tech_task/app/constants.dart';
import 'package:route_tech_task/app/managers/language_manager.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {

  final LanguageManager _languageManager;

  DioFactory(this._languageManager);

  Dio create() {
    final dio = Dio();
    
    dio.options = BaseOptions(
      baseUrl: Constants.baseUrl,
      connectTimeout: Constants.apiSendTimeout,
      receiveTimeout: Constants.apiReceiveTimeout,
      headers: {
        Constants.contentTypeKey   : Constants.contentTypeValue,
        Constants.acceptKey        : Constants.acceptValue,
        Constants.authorizationKey : "", // Add your token here
        Constants.languageKey      : _languageManager.defaultLang.languageCode,
      },
    );

    if (!kReleaseMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          request: true,
          requestBody: true,
          requestHeader: true,
          responseBody: true, 
          compact: true,
          error: true,
        ),
      );
    }
    return dio;
  }
}