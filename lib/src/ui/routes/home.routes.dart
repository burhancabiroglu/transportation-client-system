import 'package:babiconsultancy/src/ui/screens/home/home_screen.dart';
import 'package:babiconsultancy/src/ui/screens/profile/profile_screen.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/nodes/airport_transfer_screen.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/nodes/default_transfer_screen.dart';
import 'package:flutter/material.dart';

Route homeRoutes(RouteSettings settings) {
  final screen = switch (settings.name) {
    HomeScreen.route => const HomeScreen(),
    DefaultTransferScreen.route => const DefaultTransferScreen(),
    AirportTransferScreen.route => const AirportTransferScreen(),
    ProfileScreen.route => const ProfileScreen(),
    _ => const HomeScreen()
  };
  return UnanimatedPageRoute(builder: (_) => screen);
}



class UnanimatedPageRoute<T> extends MaterialPageRoute<T> {
  
  UnanimatedPageRoute({
    required super.builder,
    super.settings,
    super.maintainState = true,
    super.fullscreenDialog = false,
  });

  @override
  Widget buildTransitions(BuildContext context,Animation<double> animation,Animation<double> secondaryAnimation,Widget child) {
    return child;
  }  

  @override
  Duration get transitionDuration => Duration.zero;
}