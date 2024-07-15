import 'package:route_tech_task/app/app.dart';
import 'package:route_tech_task/app/constants.dart';
import 'package:route_tech_task/app/dependencies_injection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  String name = Constants.appName;
  // start app
  if (kDebugMode) { print('[$name] Start'); }

  // initialize flutter bindings
  if (kDebugMode) { print('[$name] Initializing Bindings'); }
  WidgetsFlutterBinding.ensureInitialized();

  // initialize app dependencies
  if (kDebugMode) { print('[$name] Initializing App Dependencies'); }
  await initializeAppDependencies();
  
  runApp(const App());
}