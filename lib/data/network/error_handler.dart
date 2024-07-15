
// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:route_tech_task/app/l10n/generated/l10n.dart';
import 'package:route_tech_task/data/network/response_status.dart';
import 'package:dio/dio.dart';

class ErrorHandler {
  static ResponseStatus handleError(dynamic error) {
    if (error is DioException) {
      if (error.response != null && error.response!.statusCode != null && error.response!.statusMessage != null) {
        return ResponseStatus(error.response!.statusCode!, error.response!.statusMessage!);
      } else {
        switch (error.type) {
          case DioExceptionType.connectionTimeout:
            return ResponseCases.CONNECT_TIMEOUT.status;
          case DioExceptionType.sendTimeout:
            return ResponseCases.SEND_TIMEOUT.status;
          case DioExceptionType.receiveTimeout:
            return ResponseCases.RECIEVE_TIMEOUT.status;
          case DioExceptionType.cancel:
            return ResponseCases.CANCEL.status;
          case DioExceptionType.badCertificate:
            return ResponseCases.CACHE_ERROR.status;
          case DioExceptionType.badResponse:
            return ResponseCases.BAD_RESPONSE.status;
          case DioExceptionType.connectionError:
            return ResponseCases.NO_INTERNET_CONNECTION.status;
          case DioExceptionType.unknown:
            return ResponseCases.DEFAULT.status;
        }
      }
      
    } else {
      return ResponseCases.DEFAULT.status;
    }
  }

  static ResponseStatus errorFromCode(int code) {
    switch (code) {
      case ResponseCode.SUCCESS:
        return ResponseCases.SUCCESS.status;
      case ResponseCode.NO_CONTENT:
        return ResponseCases.NO_CONTENT.status;
      case ResponseCode.BAD_REQUEST:
        return ResponseCases.BAD_REQUEST.status;
      case ResponseCode.BAD_RESPONSE:
        return ResponseCases.BAD_RESPONSE.status;
      case ResponseCode.UNAUTORISED:
        return ResponseCases.UNAUTORISED.status;
      case ResponseCode.FORBIDDEN:
        return ResponseCases.FORBIDDEN.status;
      case ResponseCode.INTERNAL_SERVER_ERROR:
        return ResponseCases.INTERNAL_SERVER_ERROR.status;
      case ResponseCode.NOT_FOUND:
        return ResponseCases.NOT_FOUND.status;
      case ResponseCode.DEFAULT:
        return ResponseCases.DEFAULT.status;
      case ResponseCode.CONNECT_TIMEOUT:
        return ResponseCases.CONNECT_TIMEOUT.status;
      case ResponseCode.CANCEL:
        return ResponseCases.CANCEL.status;
      case ResponseCode.RECIEVE_TIMEOUT:
        return ResponseCases.RECIEVE_TIMEOUT.status;
      case ResponseCode.SEND_TIMEOUT:
        return ResponseCases.SEND_TIMEOUT.status;
      case ResponseCode.CACHE_ERROR:
        return ResponseCases.CACHE_ERROR.status;
      case ResponseCode.NO_INTERNET_CONNECTION:
        return ResponseCases.NO_INTERNET_CONNECTION.status;
      case ResponseCode.DATA_PROCESSING_ERROR:
        return ResponseCases.DATA_PROCESSING_ERROR.status;
      default:
        return ResponseCases.DEFAULT.status;
    }
  }
}

enum ResponseCases {
  SUCCESS,
  NO_CONTENT,
  BAD_REQUEST,
  BAD_RESPONSE,
  FORBIDDEN,
  UNAUTORISED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECIEVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  DATA_PROCESSING_ERROR,
  DEFAULT;

  ResponseStatus get status {
    switch (this) {
      case ResponseCases.SUCCESS:
        return ResponseStatus(ResponseCode.SUCCESS, ResponseMessage.SUCCESS);
      case ResponseCases.NO_CONTENT:
        return ResponseStatus(ResponseCode.NO_CONTENT, ResponseMessage.NO_CONTENT);
      case ResponseCases.BAD_REQUEST:
        return ResponseStatus(ResponseCode.BAD_REQUEST, ResponseMessage.BAD_REQUEST);
      case ResponseCases.BAD_RESPONSE:
        return ResponseStatus(ResponseCode.BAD_RESPONSE, ResponseMessage.BAD_RESPONSE);
      case ResponseCases.FORBIDDEN:
        return ResponseStatus(ResponseCode.FORBIDDEN, ResponseMessage.FORBIDDEN);
      case ResponseCases.UNAUTORISED:
        return ResponseStatus(ResponseCode.UNAUTORISED, ResponseMessage.UNAUTORISED);
      case ResponseCases.NOT_FOUND:
        return ResponseStatus(ResponseCode.NOT_FOUND, ResponseMessage.NOT_FOUND);
      case ResponseCases.INTERNAL_SERVER_ERROR:
        return ResponseStatus(ResponseCode.INTERNAL_SERVER_ERROR, ResponseMessage.INTERNAL_SERVER_ERROR);
      case ResponseCases.CONNECT_TIMEOUT:
        return ResponseStatus(ResponseCode.CONNECT_TIMEOUT, ResponseMessage.CONNECT_TIMEOUT);
      case ResponseCases.CANCEL:
        return ResponseStatus(ResponseCode.CANCEL, ResponseMessage.CANCEL);
      case ResponseCases.RECIEVE_TIMEOUT:
        return ResponseStatus(ResponseCode.RECIEVE_TIMEOUT, ResponseMessage.RECIEVE_TIMEOUT);
      case ResponseCases.SEND_TIMEOUT:
        return ResponseStatus(ResponseCode.SEND_TIMEOUT, ResponseMessage.SEND_TIMEOUT);
      case ResponseCases.CACHE_ERROR:
        return ResponseStatus(ResponseCode.CACHE_ERROR, ResponseMessage.CACHE_ERROR);
      case ResponseCases.NO_INTERNET_CONNECTION:
        return ResponseStatus(ResponseCode.NO_INTERNET_CONNECTION, ResponseMessage.NO_INTERNET_CONNECTION);
      case ResponseCases.DATA_PROCESSING_ERROR:
        return ResponseStatus(ResponseCode.DATA_PROCESSING_ERROR, ResponseMessage.DATA_PROCESSING_ERROR);
      case ResponseCases.DEFAULT:
        return ResponseStatus(ResponseCode.DEFAULT, ResponseMessage.DEFAULT);
    }
  }

}

class ResponseCode {
  static const int SUCCESS = 200; // success with data
  static const int NO_CONTENT = 201; // success with no data (no content)
  static const int BAD_REQUEST = 400; // failure, API rejected request
  static const int BAD_RESPONSE = 422; // failure, API resturn bad response
  static const int UNAUTORISED = 401; // failure, user is not authorised
  static const int FORBIDDEN = 403; //  failure, API rejected request
  static const int INTERNAL_SERVER_ERROR = 500; // failure, crash in server side
  static const int NOT_FOUND = 404; // failure, not found

  // local status code
  static const int DEFAULT = -1;
  static const int CONNECT_TIMEOUT = -2;
  static const int CANCEL = -3;
  static const int RECIEVE_TIMEOUT = -4;
  static const int SEND_TIMEOUT = -5;
  static const int CACHE_ERROR = -6;
  static const int NO_INTERNET_CONNECTION = -7;
  static const int DATA_PROCESSING_ERROR = -8;
}

class ResponseMessage {
  static String SUCCESS               = S.current.success; // success with data
  static String NO_CONTENT            = S.current.success; // success with no data (no content)
  static String BAD_REQUEST           = S.current.bad_request_error; // failure, API rejected request
  static String BAD_RESPONSE          = S.current.bad_response_error; // failure, API rejected request
  static String UNAUTORISED           = S.current.unauthorized_error; // failure, user is not authorised
  static String FORBIDDEN             = S.current.forbidden_error; //  failure, API rejected request
  static String INTERNAL_SERVER_ERROR = S.current.internal_server_error; // failure, crash in server side
  static String NOT_FOUND             = S.current.not_found_error; // failure, crash in server side

  // local status code
  static String DEFAULT                = S.current.default_error;
  static String CONNECT_TIMEOUT        = S.current.timeout_error;
  static String CANCEL                 = S.current.default_error;
  static String RECIEVE_TIMEOUT        = S.current.timeout_error;
  static String SEND_TIMEOUT           = S.current.timeout_error;
  static String CACHE_ERROR            = S.current.cache_error;
  static String NO_INTERNET_CONNECTION = S.current.no_internet_error;
  static String DATA_PROCESSING_ERROR  = S.current.data_processing_error;
}