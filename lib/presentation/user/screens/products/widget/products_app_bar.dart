
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:route_tech_task/assets.gen.dart';

PreferredSizeWidget productsAppBar(BuildContext context) {
  return AppBar(
    centerTitle: false,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    foregroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    title: SvgPicture.asset(
      Assets.assets_logo_logo_svg,
      width: 100,
      height: 20,
    ),
  );
}