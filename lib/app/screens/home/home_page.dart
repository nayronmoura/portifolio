import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/app/screens/home/just_me/just_me_page.dart';
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

  void onTapSobre() {
    _scrollController.scrollToIndex(index: 1);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          appBar: isMobile(context) ? AppBar() : null,
          drawer: isMobile(context)
              ? Sidebar(onTapHome: onTapHome, onTapSobre: onTapSobre)
              : null,
          body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              !isMobile(context)
                  ? Sidebar(onTapHome: onTapHome, onTapSobre: onTapSobre)
                  : Container(),
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      AnchorItemWrapper(
                        index: 0,
                        controller: _scrollController,
                        child: const JustMePage(),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ));
    });
  }
}
