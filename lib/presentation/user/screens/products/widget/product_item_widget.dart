
import 'package:flutter/material.dart';
import 'package:route_tech_task/app/dependencies_injection.dart';
import 'package:route_tech_task/app/extensions.dart';
import 'package:route_tech_task/app/managers/font_manager.dart';
import 'package:route_tech_task/app/managers/theme_manager.dart';
import 'package:route_tech_task/domain/models/product_model.dart';
import 'package:route_tech_task/presentation/user/screens/products/widget/product_media_widget.dart';
import 'package:route_tech_task/presentation/user/screens/products/widget/product_price_widget.dart';
import 'package:route_tech_task/presentation/user/screens/products/widget/product_rating_widget.dart';

class ProductItemWidget extends StatelessWidget {
  
  final ProductModel product;
  final Color cardColor;

  const ProductItemWidget({
    super.key,
    required this.product,
    required this.cardColor,
  });
  

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 2.0,
              color: Color(0xff949ca2),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              
              ProductMediaWidget(
                thumbnail: product.thumbnail,
                cardColor: cardColor,
              ),
          
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 32,
                      child: Text(
                        product.title,
                        style: context.labelM?.copyWith(
                          fontWeight: FontWeights.semiBold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
        
                    ProductPriceWidget(
                      price: product.price,
                      discountPercentage: product.discountPercentage,
                    ),
        
                    ProductRatingWidget(
                      rating: product.rating,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),


        PositionedDirectional(
          top: 8.0,
          end: 8.0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: instance<ThemeManager>().color.background,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(
                Icons.favorite_border,
                color: instance<ThemeManager>().color.primary,
                size: 22,
              ),
            ),
          ),
        )
      ],
    );
  }
}