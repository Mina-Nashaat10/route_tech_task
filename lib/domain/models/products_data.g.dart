// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsData _$ProductsDataFromJson(Map<String, dynamic> json) => ProductsData(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      skip: (json['skip'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
    );

Map<String, dynamic> _$ProductsDataToJson(ProductsData instance) =>
    <String, dynamic>{
      'products': instance.products,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };
