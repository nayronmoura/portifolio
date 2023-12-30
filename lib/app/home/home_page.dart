import 'package:flutter/material.dart';
import 'package:portifolio/util/constants.dart';
import 'package:portifolio/widgets/sidebar/sidebar.dart';
import 'package:routefly/routefly.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
