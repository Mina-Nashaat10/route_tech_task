import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:route_tech_task/app/constants.dart';
import 'package:route_tech_task/data/response/products_response.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {

  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @GET("/products")
  Future<ProductsResponse> getProducts();
}
