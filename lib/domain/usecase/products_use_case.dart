
import 'package:route_tech_task/data/network/api_request.dart';
import 'package:route_tech_task/data/network/response_status.dart';
import 'package:route_tech_task/domain/models/products_data.dart';
import 'package:route_tech_task/domain/respository/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:route_tech_task/domain/usecase/base_usecase.dart';

class ProductsUseCase extends BaseUseCase<ApiRequest, ProductsData> {

  final Repository _repository;

  ProductsUseCase(this._repository);

  @override
  Future<Either<ResponseStatus, ProductsData>> execute(ApiRequest input) {
    return _repository.getProducts(input);
  }
}