import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
<<<<<<< Updated upstream
=======
import 'package:portifolio/core/generated/l10n.dart';
>>>>>>> Stashed changes

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
<<<<<<< Updated upstream
        initial: AdaptiveThemeMode.light,
        light: ThemeData.light(useMaterial3: true),
        dark: ThemeData.dark(useMaterial3: true),
        builder: (theme, darkTheme) => MaterialApp.router(
              theme: theme,
              darkTheme: darkTheme,
              debugShowCheckedModeBanner: false,
              routerConfig: Modular.routerConfig,
            ));
=======
      initial: AdaptiveThemeMode.light,
      light: ThemeData.light(useMaterial3: true),
      dark: ThemeData.dark(useMaterial3: true),
      builder: (theme, darkTheme) => MaterialApp.router(
        title: "Nayron Moura",
        theme: theme,
        darkTheme: darkTheme,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('pt', 'BR'),
          Locale('en'),
        ],
        scrollBehavior: MyScrollBehavior(),
        debugShowCheckedModeBanner: false,
        routerConfig: Modular.routerConfig,
      ),
    );
>>>>>>> Stashed changes
  }
}

class MyScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
        PointerDeviceKind.unknown
      };
}
