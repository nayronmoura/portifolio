import 'package:flutter/material.dart';
import 'package:portifolio/app/widgets/text_animated/text_animated.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      TextAnimated(
          text: 'My skills',
          textScaler: TextScaler.linear(1.5),
          textAlign: TextAlign.start,
          duration: Duration(seconds: 1),
          style: TextStyle(
            fontSize: 20,
            decorationStyle: TextDecorationStyle.solid,
            fontWeight: FontWeight.bold,
          )),
    ]);
  }
}
