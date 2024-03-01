import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portifolio/app_widget_store.dart';
import 'package:portifolio/core/generated/l10n.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  AppWidgetStore store = Modular.get<AppWidgetStore>();

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute("/home");
    return AdaptiveTheme(
      initial: AdaptiveThemeMode.light,
      light: ThemeData.light(useMaterial3: true),
      dark: ThemeData.dark(useMaterial3: true),
      builder: (theme, darkTheme) => ListenableBuilder(
          listenable: store,
          builder: (context, _) {
            return MaterialApp.router(
              title: "Nayron Moura",
              theme: theme,
              darkTheme: darkTheme,
              locale: store.locale,
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
            );
          }),
    );
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
