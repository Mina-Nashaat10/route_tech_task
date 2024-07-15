
import 'package:route_tech_task/app/state_manager/data_event.dart';
import 'package:route_tech_task/data/network/response_status.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

enum ProgressDirection {
  send,
  recv,
}

class DataInitialState extends Equatable {
  const DataInitialState();

  @override
  List<Object?> get props => [];
}

class DataState extends DataInitialState {

  final DataEvent event;
  final Response? response;

  const DataState({required this.event, this.response});

  @override
  List<Object?> get props => [event, response];
}

class DataProgressState extends DataState {
  /// [total] is the content length of the response/request body.
  /// 1.When receiving data:
  ///   [total] is the request body length.
  /// 2.When receiving data:
  ///   [total] will be -1 if the size of the response body is not known in advance,
  ///   for example: response data is compressed with gzip or no content-length header.
  final int total;
  /// [count] is the length of the bytes have been sent/received.
  final int bytes;
  final double progress;
  final ProgressDirection type;

  const DataProgressState({
    required this.progress, 
    required super.event, 
    super.response, 
    this.total = -1, 
    this.bytes = -1,
    this.type = ProgressDirection.send, 
  });

  @override
  List<Object?> get props => [total, bytes, progress, type, event, response];
}

class DataLoadedState<T> extends DataState {
  final T? data;

  const DataLoadedState({required super.event, super.response, this.data});

  @override
  List<Object?> get props => [data, event, response];
}

class DataErrorState<T> extends DataState {
  final ResponseStatus error;

  const DataErrorState({required super.event, super.response, required this.error});

  @override
  List<Object?> get props => [error, event, response];
}