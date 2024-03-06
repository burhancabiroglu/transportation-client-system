import 'package:babiconsultancy/src/core/base/nav_bar_data.dart';
import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainNavCubit extends Cubit<NavBarData> {
  MainNavCubit({ NavBarData? initialState}): super(initialState ?? NavBarData.HOME);

  void setState(int id) {
    final navBarData = NavBarData.get(id);
    emit(navBarData);
    _onRoute(navBarData.route);
  }

  @protected
  void _onRoute(String route) async {
    await CoreRouter.bottomNavBar.popAndPushNamed(route);
  }
}