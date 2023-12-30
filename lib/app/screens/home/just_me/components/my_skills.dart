import 'package:flutter/material.dart';

import 'package:portifolio/app/widgets/language_card/language_card.dart';
import 'package:portifolio/app/widgets/text_animated/text_animated.dart';

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
              ),
            ),
            child: const TextAnimated(
                text: 'My skills',
                textScaler: TextScaler.linear(1.5),
                textAlign: TextAlign.start,
                duration: Duration(seconds: 1),
                style: TextStyle(
                  fontSize: 20,
                  decorationStyle: TextDecorationStyle.solid,
                  fontWeight: FontWeight.bold,
                )),
          ),
          const SizedBox(height: 10),
          const Wrap(children: [
            LanguageCard(
              imageUrl: 'svg/flutter.svg',
              title: 'Flutter',
              description:
                  'Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
            )
          ])
        ],
      ),
    ]);
  }
}
