
import 'package:route_tech_task/app/services/internet_service.dart';
import 'package:route_tech_task/data/data_source/remote_data_source.dart';
import 'package:route_tech_task/data/mapper/products_mapper.dart';
import 'package:route_tech_task/data/network/api_request.dart';
import 'package:route_tech_task/data/network/error_handler.dart';
import 'package:route_tech_task/data/network/response_status.dart';
import 'package:route_tech_task/domain/models/products_data.dart';
import 'package:route_tech_task/domain/respository/repository.dart';
import 'package:dartz/dartz.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource _remoteDataSource;
  final InternetService _internetService;

  RepositoryImpl(this._remoteDataSource, this._internetService);
  
  @override
  Future<Either<ResponseStatus, ProductsData>> getProducts(ApiRequest apiRequest) async {
    if (await _internetService.hasConnection) {
      try {
        final response = await _remoteDataSource.getProducts();
        return Right(response.toDomain());
      } catch (e) {
        return Left(ErrorHandler.handleError(e));
      }
    } else {
      return Left(ResponseCases.NO_INTERNET_CONNECTION.status);
    }

  }
}