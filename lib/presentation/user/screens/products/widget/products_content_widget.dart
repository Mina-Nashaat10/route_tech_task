
import 'package:flutter/material.dart';
import 'package:route_tech_task/domain/models/products_data.dart';
import 'package:route_tech_task/presentation/user/screens/products/widget/product_items_list_widget.dart';
import 'package:route_tech_task/presentation/user/screens/products/widget/products_header_widget.dart';

class ProductsContentWidget extends StatelessWidget {

  final ProductsData productsData;

  const ProductsContentWidget({
    super.key,
    required this.productsData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProductsHeaderWidget(),
        Expanded(
          child: ProductItemsListWidget(
            products: productsData.products,
          ),
        ),
      ],
    );
  }
}