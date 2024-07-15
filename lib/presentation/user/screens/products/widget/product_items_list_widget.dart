
import 'package:flutter/material.dart';
import 'package:route_tech_task/domain/models/product_model.dart';
import 'package:route_tech_task/presentation/user/screens/products/widget/product_item_widget.dart';

class ProductItemsListWidget extends StatefulWidget {

  final List<ProductModel> products;

  const ProductItemsListWidget({
    super.key,
    required this.products,
  });

  @override
  State<ProductItemsListWidget> createState() => _ProductItemsListWidgetState();
}

class _ProductItemsListWidgetState extends State<ProductItemsListWidget> {
  
  int index = 0;

  final List<Color> colors = const [
    Color(0xffd3d2ce),
    Color(0xff000000),
    Color(0xfff6f8f7),
    Color(0xfff6f7f9),
    Color(0xff566868),
    Color(0xffa68d4b),
  ];
  
  Color get getColor {
    if (index + 1 < colors.length) {
      return colors[index++];
    } else {
      index = 0;
      return colors[index];
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: widget.products.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 250,
        mainAxisExtent: 208,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
      ), 
      itemBuilder: (context, index) {
        return ProductItemWidget(
          product: widget.products[index],
          cardColor: getColor
        );
      },
    );
  }
}