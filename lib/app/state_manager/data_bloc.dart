
import 'dart:async';
import 'package:route_tech_task/app/debugger/debugger.dart';
import 'package:route_tech_task/app/state_manager/data_event.dart';
import 'package:route_tech_task/app/state_manager/data_state.dart';
import 'package:route_tech_task/data/network/response_status.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_tech_task/domain/usecase/base_usecase.dart';

class DataBloc<MODEL> extends Bloc<DataEvent, DataInitialState> {

  final BaseUseCase useCase;
  final int startPage;
  final int perPage;
  final bool debug;

  DataBloc({
    required this.useCase,
    this.startPage = 1,
    this.perPage = 5,
    this.debug = true,
    DataInitialState initialState = const DataInitialState(),
  }) : super(initialState) {

    on<IndexDataEvent>(_index);
    on<ShowDataEvent>(_show);
  }
  
  Future index() async => _index(IndexDataEvent(), null);
  Future show(dynamic id) async => _show(ShowDataEvent(id: id), null);

  Future _index(IndexDataEvent event, Emitter<DataInitialState>? emit) async {
    doEmit(DataProgressState(progress: 0, event: event));

    final response = await useCase.execute(event.request);

    final state = _processResponse(response, event);
    if (state is DataLoadedState) {
      doEmit(state, emit: emit);
    } else {
      if (debug) {
        Debugger().v('[ApiDataBloc] [$MODEL] Received unknown state: $state');
      }
    }

    doEmit(state, emit: emit);
    return state;
  }

  Future _show(ShowDataEvent event, Emitter<DataInitialState>? emit) async {
    doEmit(DataProgressState(progress: 0, event: event));

    final response = await useCase.execute(event.request);

    final state = _processResponse(response, event);
    doEmit(state, emit: emit);
    return state;
  }
  
  void doEmit(DataState state, {Emitter<DataInitialState>? emit}) {
    if (!isClosed) {
      if (emit == null) {
        // ignore: invalid_use_of_visible_for_testing_member
        super.emit(state);
      } else {
        emit.call(state);
      }
    } else {
      Debugger().e('[DataBloc] [Error] [$runtimeType] Bloc is Closed');
    } 
  }

  DataState _processResponse(Either<ResponseStatus, dynamic> response, DataEvent event) {
    return response.fold(
      (failure) => DataErrorState(error: failure, event: event),
      (apiResponse) => DataLoadedState<MODEL>(event: event, data: apiResponse),
    );
  }
}