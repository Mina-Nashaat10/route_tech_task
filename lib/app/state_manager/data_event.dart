
import 'package:route_tech_task/data/network/api_request.dart';
import 'package:equatable/equatable.dart';

abstract class DataEvent extends Equatable {

  final ApiRequest request;

  const DataEvent(this.request);

  @override
  List<Object?> get props =>[request];
}

class IndexDataEvent extends DataEvent {
  
  IndexDataEvent() : super(
    ApiRequest(),
  ) {
    request.event = this;
  }
}

class ShowDataEvent extends DataEvent {
  final dynamic id;

  ShowDataEvent({required this.id}) : super(
    ApiRequest(),
  ) {
    request.event = this;
  }
}
