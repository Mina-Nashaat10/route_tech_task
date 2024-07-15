
import 'package:route_tech_task/app/constants.dart';
import 'package:route_tech_task/app/dependencies_injection.dart';
import 'package:route_tech_task/app/l10n/generated/l10n.dart';
import 'package:route_tech_task/app/managers/language_manager.dart';
import 'package:route_tech_task/app/managers/router_manager.dart';
import 'package:route_tech_task/app/managers/theme_manager.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      debugShowCheckedModeBanner: false,

      scaffoldMessengerKey: instance<GlobalKey<ScaffoldMessengerState>>(),
      navigatorKey: instance<GlobalKey<NavigatorState>>(),
      
      routes: instance<RouterManager>().routes,
      // routerDelegate: instance<RouterManager>().appRouter.routerDelegate,
      // routeInformationParser: instance<RouterManager>().appRouter.routeInformationParser,

      locale: instance<LanguageManager>().currentLang.locale,
      localizationsDelegates: const [
        S.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,

      scrollBehavior: MyCustomScrollBehavior(),

      theme: instance<ThemeManager>().theme,
      darkTheme: instance<ThemeManager>().theme,
      themeMode: instance<ThemeManager>().mode,

      // debug and profile
      showPerformanceOverlay: false,
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.stylus,
    PointerDeviceKind.invertedStylus,
    PointerDeviceKind.trackpad,
    PointerDeviceKind.unknown,
    // etc.
  };
}