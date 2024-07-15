import 'package:route_tech_task/data/network/app_api.dart';
import 'package:route_tech_task/data/response/products_response.dart';

abstract class RemoteDataSource {
  Future<ProductsResponse> getProducts();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final AppServiceClient _appServiceClient;

  RemoteDataSourceImpl(this._appServiceClient);
  
  @override
  Future<ProductsResponse> getProducts() async {
    return await _appServiceClient.getProducts();
  }
}