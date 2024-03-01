import 'package:flutter_modular/flutter_modular.dart';
import 'package:portifolio/app/screens/app_page.dart';
import 'package:portifolio/app/screens/home/home_page.dart';
import 'package:portifolio/app/screens/in_progress/in_progress_page.dart';
import 'package:portifolio/app_widget_store.dart';
import 'package:portifolio/core/local_storage_service.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(AppWidgetStore.new);
    i.add(LocalStorageService.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const AppPage());
    r.child('/workinprogress', child: (context) => const InProgressPage());
    r.child('/home', child: (context) => const HomePage());

    r.wildcard(child: (_) => const AppPage());
  }
}
