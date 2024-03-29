import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';

import 'package:portifolio/app/widgets/text_animated/text_animated.dart';
import 'package:portifolio/core/generated/l10n.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox.expand(
          child: Container(
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
                    Modular.to.navigate('/home');
                  },
                  text: S.of(context).welcomeText,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Lottie.asset(
            "assets/lotties/hand.json",
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
