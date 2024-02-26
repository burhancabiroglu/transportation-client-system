import 'package:babiconsultancy/main.dart';
import 'package:babiconsultancy/src/core/base/core_stateful_widget.dart';
import 'package:babiconsultancy/src/core/base/nav_bar_data.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CoreBottomNavBar extends CoreStatefulWidget {
  final GlobalKey? navigatorKey;
  const CoreBottomNavBar({super.key, this.navigatorKey});

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
        onTabChange: (value) {
          final context = widget.navigatorKey!.currentContext!;
          Navigator.of(context).popAndPushNamed(NavBarData.get(value).route);
        },
        tabs: [
          GButton(
            icon: NavBarData.HOME.icon,
            text: localization.of(NavBarData.HOME.key),
            iconSize: 30,
          ),
          GButton(
            icon: NavBarData.TRANSFERS.icon,
            text: localization.of(NavBarData.TRANSFERS.key),
          ),
          GButton(
            icon: NavBarData.AIRPORT_TRANSFERS.icon,
            text: localization.of(NavBarData.AIRPORT_TRANSFERS.key),
            iconSize: 30,
          ),
          GButton(
            icon: NavBarData.PROFILE.icon,
            text: localization.of(NavBarData.PROFILE.key),
          )
        ]
      ),
    );
  }
}
