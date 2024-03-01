import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/app/widgets/lang_button/lang_button.dart';

class Sidebar extends StatefulWidget {
  final void Function() onTapHome;
  final void Function() onTapSobre;

  const Sidebar({super.key, required this.onTapHome, required this.onTapSobre});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
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
                  title: const Text('Home'),
                  onTap: widget.onTapHome,
                ),
                // ListTile(
                //   title: const Text('Sobre'),
                //   onTap: widget.onTapSobre,
                // ),
              ],
            ),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      AdaptiveTheme.of(context).toggleThemeMode();
                    });
                  },
                  icon: AdaptiveTheme.of(context).mode.isDark
                      ? const Icon(Icons.light_mode)
                      : const Icon(Icons.dark_mode)),
              LangButton(),
            ],
          )
        ],
      ),
    );
  }
}
