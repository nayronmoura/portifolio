import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portifolio/app_widget_store.dart';

class LangButton extends StatelessWidget {
  final AppWidgetStore store = Modular.get<AppWidgetStore>();
  LangButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: store,
        builder: (context, _) {
          return IconButton(
            icon: const Icon(Icons.language),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Select Language'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text('English',
                              style: TextStyle(
                                  fontWeight: store.locale.countryCode == "en"
                                      ? FontWeight.bold
                                      : FontWeight.normal)),
                          onTap: () {
                            store.changeLocale(const Locale('en'));
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: Text('Portuguese (BR)',
                              style: TextStyle(
                                  fontWeight: store.locale.countryCode == "pt"
                                      ? FontWeight.bold
                                      : FontWeight.normal)),
                          onTap: () {
                            store.changeLocale(const Locale('pt', 'BR'));
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          );
        });
  }
}
