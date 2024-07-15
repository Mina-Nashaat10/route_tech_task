
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:route_tech_task/domain/models/dimension.dart';
import 'package:route_tech_task/domain/models/meta.dart';
import 'package:route_tech_task/domain/models/review.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  
  final int id;

  final String title;
  final String description;
  final String category;

  final double price;
  final double discountPercentage;

  final double rating;

  final int stock;

  final List<String> tags;

  final String? brand;
  final String sku;

  final int weight;
  final Dimension dimensions;

  final String warrantyInformation;
  final String shippingInformation;
  final String availabilityStatus;

  final List<Review> reviews;

  final String returnPolicy;

  final int minimumOrderQuantity;

  final Meta meta;
  
  final List<String> images;
  final String thumbnail;

  ProductModel({
    required this.id,

    required this.title,
    required this.description,
    required this.category,

    required this.price,
    required this.discountPercentage,

    required this.rating,

    required this.stock,

    required this.tags,

    this.brand,
    required this.sku,

    required this.weight,
    required this.dimensions,

    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,

    required this.reviews,

    required this.returnPolicy,

    required this.minimumOrderQuantity,

    required this.meta,
    
    required this.images,
    required this.thumbnail,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);


  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProductModel &&
      other.id == id &&
      other.title == title &&
      other.description == description &&
      other.category == category &&
      other.price == price &&
      other.discountPercentage == discountPercentage &&
      other.rating == rating &&
      other.stock == stock &&
      listEquals(other.tags, tags) &&
      other.brand == brand &&
      other.sku == sku &&
      other.weight == weight &&
      other.dimensions == dimensions &&
      other.warrantyInformation == warrantyInformation &&
      other.shippingInformation == shippingInformation &&
      other.availabilityStatus == availabilityStatus &&
      listEquals(other.reviews, reviews) &&
      other.returnPolicy == returnPolicy &&
      other.minimumOrderQuantity == minimumOrderQuantity &&
      other.meta == meta &&
      listEquals(other.images, images) &&
      other.thumbnail == thumbnail;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      category.hashCode ^
      price.hashCode ^
      discountPercentage.hashCode ^
      rating.hashCode ^
      stock.hashCode ^
      tags.hashCode ^
      brand.hashCode ^
      sku.hashCode ^
      weight.hashCode ^
      dimensions.hashCode ^
      warrantyInformation.hashCode ^
      shippingInformation.hashCode ^
      availabilityStatus.hashCode ^
      reviews.hashCode ^
      returnPolicy.hashCode ^
      minimumOrderQuantity.hashCode ^
      meta.hashCode ^
      images.hashCode ^
      thumbnail.hashCode;
  }
}
