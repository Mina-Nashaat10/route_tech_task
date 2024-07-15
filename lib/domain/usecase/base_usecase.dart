import 'package:dartz/dartz.dart';
import 'package:route_tech_task/data/network/response_status.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<ResponseStatus, Out>> execute(In input);
}
