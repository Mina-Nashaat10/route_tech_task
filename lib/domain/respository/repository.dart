
import 'package:route_tech_task/data/network/api_request.dart';
import 'package:route_tech_task/data/network/response_status.dart';
import 'package:dartz/dartz.dart';
import 'package:route_tech_task/domain/models/products_data.dart';

abstract class Repository {
  Future<Either<ResponseStatus, ProductsData>> getProducts(ApiRequest apiRequest);
}
