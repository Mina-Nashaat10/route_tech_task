
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductMediaWidget extends StatelessWidget {

  final String thumbnail;
  final Color cardColor;

  const ProductMediaWidget({
    super.key,
    required this.thumbnail,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          left: 0,
          right: 0,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: ColoredBox(color: cardColor),
          )
        ),
        CachedNetworkImage(
          imageUrl: thumbnail,
          height: 110,
          width: double.infinity,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}