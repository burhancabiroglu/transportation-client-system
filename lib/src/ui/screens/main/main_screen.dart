import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/rounded_body.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainScreen extends CoreStatelessWidget {
  static const route = "/main";

  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: theme.colorScheme.darken,
        appBar: AppBar(
          title: Text(
            localization.of(LocalizationKeys.Home_Title),
             style: TextStyle(color: theme.colorScheme.white)
          ),
          backgroundColor: theme.colorScheme.darken,
        ) ,
        body: const RoundedBody(),
        bottomNavigationBar: GNav(
          padding: const EdgeInsets.only(bottom: 40,top: 20,left: 20,right: 20),
          backgroundColor: theme.colorScheme.white,
          tabs: const [
            GButton(icon: Icons.home),
            GButton(icon: Icons.home),
            GButton(icon: Icons.home),
            GButton(icon: Icons.home)
          ]
      ),
    );
  }
}