// ignore_for_file: non_constant_identifier_names

import 'package:babiconsultancy/main.dart';
import 'package:babiconsultancy/src/core/base/core_stateful_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:unicons/unicons.dart';

class CoreBottomNavBar extends CoreStatefulWidget {
  const CoreBottomNavBar({super.key});

  @override
  CoreWidgetState createState() => _CoreBottomNavBarState();
}

class _CoreBottomNavBarState extends CoreWidgetState<CoreBottomNavBar> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: WindowDefaults.wall,
        vertical: WindowDefaults.verticalPadding
      ).copyWith(bottom: WindowDefaults.verticalPadding * 2.2),
      decoration: BoxDecoration(color: appTheme.colorScheme.white),
      child: GNav(
        selectedIndex: selectedIndex,
        gap: 10.w,
        textStyle: appTheme.textStyle.callout02.copyWith(color: appTheme.colorScheme.white),
        activeColor: appTheme.colorScheme.white,
        color: appTheme.colorScheme.textSecondary,
        padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 10.w),
        tabBorderRadius: 18,
        tabBackgroundGradient: LinearGradient(colors: [
          appTheme.colorScheme.forest,
          appTheme.colorScheme.forest.withAlpha(100)
        ]),
        tabBackgroundColor: appTheme.colorScheme.forest,
        tabs: const [
          GButton(
            icon: UniconsLine.home_alt,
            text: 'Ana Sayfa',
            iconSize: 30,
          ),
          GButton(
            icon: FontAwesomeIcons.bus,
            text: 'Transferler',
          ),
          GButton(
            icon: UniconsLine.plane,
            text: 'Transferler',
            iconSize: 30,
          ),
          GButton(
            icon: UniconsLine.user,
            text: 'Profil',
          )
        ]
      ),
    );
  }
}
