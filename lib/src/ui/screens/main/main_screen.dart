import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/base/nav_bar_data.dart';
import 'package:babiconsultancy/src/ui/routes/home.routes.dart';
import 'package:babiconsultancy/src/ui/screens/main/main_nav_bloc.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/app_bar.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/bottom_nav_bar.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/rounded_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends CoreStatelessWidget {
  static const route = "/main";

  const MainScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    final navBloc = BlocProvider.of<MainNavBloc>(context);

    return Container(
      color: theme.colorScheme.darken,
      child: Scaffold(
          backgroundColor: theme.colorScheme.darken,
          appBar: CoreAppBar(
            title: BlocBuilder(
              bloc: navBloc,
              builder: (context,NavBarData state) => Text(localization.of(state.key))
            ),
          ),
          body: RoundedBody(
            child: Navigator(
              key: navBloc.navigationKey,
              onGenerateRoute: homeRoutes,
            ),
          ),
          bottomNavigationBar: CoreBottomNavBar(bloc: navBloc)
      ),
    );
  }
}