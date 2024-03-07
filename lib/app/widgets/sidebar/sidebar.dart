import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/app/widgets/lang_button/lang_button.dart';
import 'package:portifolio/core/generated/l10n.dart';

class Sidebar extends StatefulWidget {
  final void Function() onTapHome;
  final void Function() onTapMySkills;
  final void Function() onTapMyProjects;

  const Sidebar(
      {super.key,
      required this.onTapHome,
      required this.onTapMySkills,
      required this.onTapMyProjects});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    AdaptiveThemeManager? manager = AdaptiveTheme.of(context);
    return Drawer(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      shadowColor: Colors.black38,
      elevation: 10,
      width: 300,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.network(
                "https://avatars.githubusercontent.com/u/47047086?v=4"),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text(S.of(context).sideAboutMe),
                  onTap: widget.onTapHome,
                ),
                ListTile(
                  title: Text(S.of(context).sideSkills),
                  onTap: widget.onTapMySkills,
                ),
                ListTile(
                  title: Text(S.of(context).sideProjects),
                  onTap: widget.onTapMyProjects,
                ),
              ],
            ),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              ListenableBuilder(
                  listenable: AdaptiveTheme.of(context).modeChangeNotifier,
                  builder: (context, _) {
                    bool isDark = AdaptiveTheme.of(context).mode.isDark;
                    return IconButton(
                        onPressed: () {
                          if (isDark) {
                            manager.setLight();
                          } else {
                            manager.setDark();
                          }
                        },
                        icon: manager.mode.isDark
                            ? const Icon(Icons.dark_mode)
                            : const Icon(Icons.light_mode));
                  }),
              LangButton(),
            ],
          )
        ],
      ),
    );
  }
}
