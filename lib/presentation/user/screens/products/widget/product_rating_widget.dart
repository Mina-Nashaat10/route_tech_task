
import 'package:flutter/material.dart';
import 'package:route_tech_task/app/dependencies_injection.dart';
import 'package:route_tech_task/app/extensions.dart';
import 'package:route_tech_task/app/l10n/generated/l10n.dart';
import 'package:route_tech_task/app/managers/font_manager.dart';
import 'package:route_tech_task/app/managers/theme_manager.dart';

class ProductRatingWidget extends StatelessWidget {

  final double rating;

  const ProductRatingWidget({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              '${S.current.review} (${rating.toStringAsFixed(1)})',
              style: context.labelS?.copyWith(
                fontWeight: FontWeights.medium,
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(start: 2.0),
              child: Icon(
                Icons.star,
                color: Color(0xfffdd701),
                size: 16,
              ),
            ),
          ],
        ),

        Container(
          margin: const EdgeInsetsDirectional.only(start: 8.0),
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
          decoration: BoxDecoration(
            color: instance<ThemeManager>().color.primary,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xfffafdfe),
            size: 18,
            weight: 200.0,
          )
        )
      ],
    );
  }
}