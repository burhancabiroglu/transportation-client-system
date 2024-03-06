import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/routes/home.routes.dart';
import 'package:babiconsultancy/src/ui/screens/main/main_nav_bloc.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends CoreStatelessWidget {
  static const route = "/main";

  const MainScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    final navBloc = BlocProvider.of<MainNavCubit>(context);

    return Container(
      color: theme.colorScheme.white,
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: theme.colorScheme.darken,
          body: Navigator(
            key: CoreRouter.bottomNavBar.key,
            onGenerateRoute: homeRoutes,
          ),
          bottomNavigationBar: CoreBottomNavBar(bloc: navBloc)
        ),
      ),
    );
  }
}