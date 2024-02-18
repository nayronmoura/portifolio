import 'package:flutter_modular/flutter_modular.dart';
import 'package:portifolio/app/screens/app_page.dart';
import 'package:portifolio/app/screens/home/home_page.dart';
import 'package:portifolio/app/screens/in_progress/in_progress_page.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const AppPage());
    r.child('/workinprogress', child: (context) => const InProgressPage());
<<<<<<< Updated upstream
    r.child('/home', child: (context) => const HomePage(), children: [
      ChildRoute('/justme', child: (context) => const JustMePage()),
      // r.child('/projects', child: (context) => const InProgressPage()),
      // r.child('/contact', child: (context) => const InProgressPage()),
    ]);
=======
    r.child('/home', child: (context) => const HomePage());

    r.wildcard(child: (_) => const AppPage());
>>>>>>> Stashed changes
  }
}
