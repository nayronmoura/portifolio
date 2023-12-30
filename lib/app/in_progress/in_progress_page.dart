import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portifolio/widgets/text_animated/text_animated.dart';

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
                  'assets/lotties/in_progress.json',
                  fit: BoxFit.cover,
                  width: 300,
                  height: 300,
                  animate: true,
                  frameRate: FrameRate.max,
                  repeat: true,
                ),
                const SizedBox(height: 20),
                const TextAnimated(
                  text: 'Página em construção!',
                  duration: Duration(seconds: 2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
