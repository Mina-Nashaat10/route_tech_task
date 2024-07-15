
import 'package:json_annotation/json_annotation.dart';
import 'package:route_tech_task/domain/models/product_model.dart';

part 'products_data.g.dart';

@JsonSerializable()
class ProductsData {

  final List<ProductModel> products;

  final int total;
  final int skip;
  final int limit;

  ProductsData({
    required this.products,
    
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory ProductsData.fromJson(Map<String, dynamic> json) => _$ProductsDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsDataToJson(this);
}
