
import 'package:json_annotation/json_annotation.dart';

part 'products_response.g.dart';

@JsonSerializable()
class ProductsResponse {
  List<Map<String, dynamic>>? products;
  int? total;
  int? skip;
  int? limit;

  ProductsResponse({this.products, this.total, this.skip, this.limit});

  // from json
  factory ProductsResponse.fromJson(Map<String, dynamic> json) => _$ProductsResponseFromJson(json);

  // to json
  Map<String, dynamic> toJson() => _$ProductsResponseToJson(this);
}