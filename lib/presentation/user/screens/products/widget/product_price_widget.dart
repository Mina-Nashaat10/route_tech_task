
import 'package:flutter/material.dart';
import 'package:route_tech_task/app/dependencies_injection.dart';
import 'package:route_tech_task/app/extensions.dart';
import 'package:route_tech_task/app/l10n/generated/l10n.dart';
import 'package:route_tech_task/app/managers/font_manager.dart';
import 'package:route_tech_task/app/managers/theme_manager.dart';

class ProductPriceWidget extends StatelessWidget {

  final double price;
  final double discountPercentage;

  const ProductPriceWidget({
    super.key,
    required this.price,
    required this.discountPercentage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 12.0),
            child: Text(
              '${S.current.egp} $price',
              style: context.labelM?.copyWith(fontWeight: FontWeights.semiBold),
            ),
          ),
          Text(
            '${(price + ((price * discountPercentage) / 100)).toStringAsFixed(2)} ${S.current.egp}',
            style: context.labelS?.copyWith(
              color: instance<ThemeManager>().color.primary,
              decoration: TextDecoration.lineThrough,
            ),
          ),
        ],
      ),
    );
  }
}