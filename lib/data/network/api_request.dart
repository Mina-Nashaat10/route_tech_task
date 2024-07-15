
import 'package:route_tech_task/app/state_manager/data_event.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiRequest {
  final String? label;
  final Map<String, dynamic>? data;
  final CancelToken? cancelToken;
  DataEvent? event;

  ApiRequest({
    this.label,
    this.data,
    this.cancelToken,
    this.event,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ApiRequest &&
      mapEquals(other.data, data) &&
      other.cancelToken == cancelToken;
  }

  @override
  int get hashCode {
    return factory.hashCode ^
      data.hashCode ^
      cancelToken.hashCode;
  }
}
