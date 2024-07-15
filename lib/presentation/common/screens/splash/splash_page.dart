
import 'dart:async';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:route_tech_task/app/dependencies_injection.dart';
import 'package:flutter/material.dart';
import 'package:route_tech_task/assets.gen.dart';
import 'package:route_tech_task/presentation/user/screens/products/products_screen.dart';

class SplashScreen extends StatefulWidget {

  static const String path = '/';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 2),
      () => instance<GlobalKey<NavigatorState>>().currentState!.pushReplacementNamed(
        ProductsScreen.path
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SvgPicture.asset(
            Assets.assets_logo_logo_svg,
            width: 200,
            height: 200,
          ),
        ),
      )
    );
  }
}