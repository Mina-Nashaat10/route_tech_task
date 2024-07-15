
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:route_tech_task/app/dependencies_injection.dart';
import 'package:route_tech_task/presentation/common/screens/splash/splash_page.dart';
import 'package:route_tech_task/presentation/user/screens/products/products_screen.dart';

class RouterManager {

  Map<String, Widget Function(BuildContext)> get routes => {
    SplashScreen.path   : (context) => const SplashScreen(),
    ProductsScreen.path : (context) => const ProductsScreen(),
  };

  bool get canPop => instance<GlobalKey<NavigatorState>>().currentState!.canPop();
}