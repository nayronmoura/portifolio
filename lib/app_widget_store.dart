import 'package:flutter/material.dart';
import 'package:portifolio/core/local_storage_service.dart';

class AppWidgetStore extends ChangeNotifier {
  LocalStorageService localStorageService;
  AppWidgetStore(this.localStorageService) {
    init();
  }

  void init() async {
    final lang = await localStorageService.getData('lang');
    if (lang != null) {
      _locale = Locale(lang);
    }
    notifyListeners();
  }

  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  void changeLocale(Locale locale) {
    _locale = locale;
    localStorageService.saveData('lang', locale.languageCode);
    notifyListeners();
  }
}
