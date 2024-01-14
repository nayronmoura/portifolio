import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portifolio/app/widgets/text_animated/text_animated.dart';
import 'package:portifolio/core/generated/l10n.dart';

class InProgressPage extends StatelessWidget {
  const InProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset(
                  'lotties/in_progress.json',
                  fit: BoxFit.cover,
                  width: 300,
                  height: 300,
                  animate: true,
                  frameRate: FrameRate.max,
                  repeat: true,
                ),
                const SizedBox(height: 20),
                TextAnimated(
                  text: S.of(context).building,
                  duration: const Duration(seconds: 2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
