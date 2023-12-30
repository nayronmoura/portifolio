import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portifolio/app/util/constants.dart';
import 'package:portifolio/app/widgets/sidebar/sidebar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Modular.to.navigate('./justme');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          appBar: isMobile(context) ? AppBar() : null,
          drawer: isMobile(context) ? const Sidebar() : null,
          body: Row(
            children: [
              !isMobile(context) ? const Sidebar() : Container(),
              const Expanded(child: RouterOutlet()),
            ],
          ));
    });
  }
}
