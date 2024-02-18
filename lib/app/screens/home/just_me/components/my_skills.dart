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
            ),
            LanguageCard(
              imageUrl: 'svg/java.svg',
              title: 'Java',
              description:
                  'Java is a general-purpose, class-based, object-oriented programming language designed for having lesser implementation dependencies. It is a concurrent language and a compiled language. It is a statically typed and reflective language.',
            ),
            LanguageCard(
              imageUrl: 'svg/spring.svg',
              title: 'Spring',
              description:
                  'Spring is an open-source application framework and inversion of control container for the Java platform. The Spring Framework provides a comprehensive infrastructure for developing Java applications.',
            ),
            LanguageCard(
              imageUrl: 'svg/postgres.svg',
              title: 'Postgres',
              description:
                  'Postgres (also known as PostgreSQL) is an open-source object-relational database management system (RDBMS) that emphasizes extensibility and standards compliance. It is one of the most popular RDBMSs in the world, and is used by millions of users and organizations.',
            )
          ])
        ],
      ),
    ]);
  }
}
