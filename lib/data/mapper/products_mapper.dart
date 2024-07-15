
import 'package:route_tech_task/data/response/products_response.dart';
import 'package:route_tech_task/domain/models/product_model.dart';
import 'package:route_tech_task/domain/models/products_data.dart';

extension ProductsMapper on ProductsResponse? {
  ProductsData toDomain() {
    return ProductsData(
      products: this?.products?.map((e) => ProductModel.fromJson(e)).toList() ?? [],
      total: this?.total ?? 0,
      skip: this?.skip ?? 0,
      limit: this?.limit ?? 0,
    );
  }
}