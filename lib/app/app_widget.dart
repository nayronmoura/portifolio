import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/routes.dart';
import 'package:routefly/routefly.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        initial: AdaptiveThemeMode.light,
        light: ThemeData.light(useMaterial3: true),
        dark: ThemeData.dark(useMaterial3: true),
        builder: (theme, darkTheme) => MaterialApp.router(
              theme: theme,
              darkTheme: darkTheme,
              debugShowCheckedModeBanner: false,
              routerConfig: Routefly.routerConfig(
                routes: routes, // GENERATED
              ),
            ));
  }
}
