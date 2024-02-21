import 'package:flutter/material.dart';

import 'package:portifolio/app/screens/home/just_me/components/about_me.dart';
import 'package:portifolio/app/screens/home/just_me/components/header.dart';
import 'package:portifolio/app/screens/home/just_me/components/my_skills.dart';

class JustMePage extends StatefulWidget {
  const JustMePage({super.key});

  @override
  State<JustMePage> createState() => _JustMePageState();
}

class _JustMePageState extends State<JustMePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return const SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Header(),
            SizedBox(height: 10),
            AboutMe(),
            SizedBox(height: 50),
            MySkills(),
            // MyProjects(),
          ],
        ),
      );
    });
  }
}
