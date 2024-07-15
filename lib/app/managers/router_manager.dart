
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:route_tech_task/app/dependencies_injection.dart';

class RouterManager {

  Map<String, Widget Function(BuildContext)> get routes => {};

  bool get canPop => instance<GlobalKey<NavigatorState>>().currentState!.canPop();
}