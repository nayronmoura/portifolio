import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/app/screens/home/components/about_me.dart';
import 'package:portifolio/app/screens/home/components/header.dart';
import 'package:portifolio/app/screens/home/components/my_projects.dart';
import 'package:portifolio/app/screens/home/components/my_skills.dart';
import 'package:portifolio/app/util/constants.dart';
import 'package:portifolio/app/widgets/sidebar/sidebar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  final _scrollController = AnchorScrollController();

  void onTapHome() {
    _scrollController.scrollToIndex(index: 0);
  }

  void onTapMySkills() {
    _scrollController.scrollToIndex(index: 1);
  }

  void onTapMyProjects() {
    _scrollController.scrollToIndex(index: 2);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          appBar: isMobile(context) ? AppBar() : null,
          drawer: isMobile(context)
              ? Sidebar(
                  onTapHome: onTapHome,
                  onTapMySkills: onTapMySkills,
                  onTapMyProjects: onTapMyProjects)
              : null,
          body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              !isMobile(context)
                  ? Sidebar(
                      onTapHome: onTapHome,
                      onTapMySkills: onTapMySkills,
                      onTapMyProjects: onTapMyProjects)
                  : Container(),
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Header(),
                      const SizedBox(height: 10),
                      AnchorItemWrapper(
                          index: 0,
                          controller: _scrollController,
                          child: const AboutMe()),
                      const SizedBox(height: 50),
                      AnchorItemWrapper(
                          index: 1,
                          controller: _scrollController,
                          child: const MySkills()),
                      const SizedBox(height: 50),
                      AnchorItemWrapper(
                          index: 2,
                          controller: _scrollController,
                          child: const MyProjects()),
                    ],
                  ),
                ),
              )
            ],
          ));
    });
  }
}
