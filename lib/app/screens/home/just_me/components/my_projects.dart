import 'package:flutter/material.dart';
import 'package:portifolio/app/widgets/text_animated/text_animated.dart';
import 'package:portifolio/core/generated/l10n.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextAnimated(
            text: S.of(context).mySkills,
            textScaler: const TextScaler.linear(1.5),
            textAlign: TextAlign.start,
            duration: const Duration(seconds: 1),
            style: const TextStyle(
              fontSize: 20,
              decorationStyle: TextDecorationStyle.solid,
              fontWeight: FontWeight.bold,
            )),
      ],
    );
  }
}
