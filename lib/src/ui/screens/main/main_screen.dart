import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/ui/routes/home.routes.dart';
import 'package:babiconsultancy/src/ui/routes/main.routes.dart';
import 'package:babiconsultancy/src/ui/screens/home/home_screen.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/app_bar.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/bottom_nav_bar.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/rounded_body.dart';
import 'package:flutter/material.dart';

class MainScreen extends CoreStatelessWidget {
  static const route = "/main";

  const MainScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: theme.colorScheme.darken,
      child: Scaffold(
          backgroundColor: theme.colorScheme.darken,
          appBar: CoreAppBar(
            text: localization.of(LocalizationKeys.Home_Title)
          ),
          body: const RoundedBody(
            child: Navigator(
              initialRoute: HomeScreen.route,
              onGenerateRoute: homeRoutes
            ),
          ),
          bottomNavigationBar: const CoreBottomNavBar()
      ),
    );
  }
}