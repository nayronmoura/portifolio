import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        initial: AdaptiveThemeMode.light,
        light: ThemeData.light(useMaterial3: true),
        dark: ThemeData.dark(useMaterial3: true),
        builder: (theme, darkTheme) => MaterialApp.router(
              title: "Nayron Moura",
              theme: theme,
              darkTheme: darkTheme,
              debugShowCheckedModeBanner: false,
              routerConfig: Modular.routerConfig,
            ));
  }
}
