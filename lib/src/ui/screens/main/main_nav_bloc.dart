import 'package:babiconsultancy/src/core/base/nav_bar_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainNavBloc extends Cubit<NavBarData> {
  final GlobalKey navigationKey = GlobalKey();
  MainNavBloc({ NavBarData? initialState}): super(initialState ?? NavBarData.HOME);

  void setState(int id) {
    final navBarData = NavBarData.get(id);
    emit(navBarData);
    _onRoute(navBarData.route);
  }

  @protected
  void _onRoute(String route) async {
    final context = navigationKey.currentContext;
    if(context == null) return;
    await Navigator.of(context).popAndPushNamed(route);
  }
}