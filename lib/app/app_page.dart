import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portifolio/routes.dart';
import 'package:portifolio/widgets/text_animated/text_animated.dart';
import 'package:routefly/routefly.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  final String text = 'Olá, seja bem-vindo ao meu portifólio!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue,
                Colors.purple,
              ],
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: TextAnimated(
                onEnd: () {
                  Routefly.navigate(routePaths.inProgress);
                },
                text: text,
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Lottie.asset(
            'assets/lotties/hand.json',
            height: 300,
            width: 300,
            fit: BoxFit.cover,
            animate: true,
            frameRate: FrameRate.max,
            repeat: true,
            reverse: false,
          ),
        ),
      ],
    ));
  }
}
