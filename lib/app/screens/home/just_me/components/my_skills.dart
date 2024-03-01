import 'package:flutter/material.dart';

import 'package:portifolio/app/widgets/language_card/language_card.dart';
import 'package:portifolio/app/widgets/text_animated/text_animated.dart';
import 'package:portifolio/core/generated/l10n.dart';

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
            child: TextAnimated(
                text: S.of(context).mySkills,
                textScaler: const TextScaler.linear(1.5),
                textAlign: TextAlign.start,
                duration: const Duration(seconds: 1),
                style: const TextStyle(
                  fontSize: 20,
                  decorationStyle: TextDecorationStyle.solid,
                  fontWeight: FontWeight.bold,
                )),
          ),
          const SizedBox(height: 10),
          Wrap(children: [
            LanguageCard(
              imageUrl: 'assets/svg/flutter.svg',
              title: S.of(context).flutterCard,
              description: S.of(context).flutterCardDescription,
            ),
            LanguageCard(
              imageUrl: 'assets/svg/java.svg',
              title: S.of(context).javaCard,
              description: S.of(context).javaCardDescription,
            ),
            LanguageCard(
              imageUrl: 'assets/svg/spring.svg',
              title: S.of(context).springCard,
              description: S.of(context).springCardDescription,
            ),
            LanguageCard(
              imageUrl: 'assets/svg/postgres.svg',
              title: S.of(context).postgresCard,
              description: S.of(context).postgresCardDescription,
            )
          ])
        ],
      ),
    ]);
  }
}
