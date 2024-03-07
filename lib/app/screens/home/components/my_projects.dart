import 'package:flutter/material.dart';
import 'package:portifolio/app/widgets/project_card/project_card.dart';
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
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: isDark ? Colors.white : Colors.black,
                width: 2,
              ),
            ),
          ),
          child: const TextAnimated(
              text: "My Projects",
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
        Wrap(children: [
          ProjectCard(
            imageProvider: const AssetImage("assets/projects/dorminhoco.png"),
            title: S.of(context).dorminhocoTitle,
            description: S.of(context).dorminhocoDescription,
            repositoryLink:
                "https://play.google.com/store/apps/details?id=br.com.dorminhoco",
          ),
          ProjectCard(
            imageProvider: const AssetImage("assets/projects/cineview.png"),
            title: S.of(context).cineviewTitle,
            description: S.of(context).cineviewDescription,
            repositoryLink:
                "https://play.google.com/store/apps/details?id=br.com.dorminhoco",
          ),
          // ProjectCard(
          //     imageProvider: 'assets/images/just_me/just_me.png',
          //     title: "Just Me",
          //     description: "A personal website to show my skills and projects",
          //     repositoryLink: "https://github.com/nayronmoura/portifolio"),
          // ProjectCard(
          //     imageProvider: 'assets/images/just_me/just_me.png',
          //     title: "Just Me",
          //     description: "A personal website to show my skills and projects",
          //     repositoryLink: "https://github.com/nayronmoura/portifolio"),
        ])
      ],
    );
  }
}
