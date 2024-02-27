import 'package:babiconsultancy/src/ui/screens/home/home_screen.dart';
import 'package:babiconsultancy/src/ui/screens/profile/profile_screen.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/airport/airport_transfer_screen.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/default/transfer_screen.dart';
import 'package:flutter/material.dart';

Route homeRoutes(RouteSettings settings) {
  switch (settings.name) {
    case HomeScreen.route:
      return UnanimatedPageRoute(builder: (_) => const HomeScreen());
    case TransferScreen.route:
      return UnanimatedPageRoute(builder: (_) => const TransferScreen());
    case AirportTransferScreen.route:
      return UnanimatedPageRoute(builder: (_) => const AirportTransferScreen());
    case ProfileScreen.route:
      return UnanimatedPageRoute(builder: (_) => const ProfileScreen());
    default:
      return UnanimatedPageRoute(builder: (_) => const HomeScreen());
  }
}



class UnanimatedPageRoute<T> extends MaterialPageRoute<T> {
  
  UnanimatedPageRoute({
    required Widget Function(BuildContext) builder,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
    builder: builder,
    settings: settings,
    maintainState: maintainState,
    fullscreenDialog: fullscreenDialog
  );

  @override
  Widget buildTransitions(BuildContext context,Animation<double> animation,Animation<double> secondaryAnimation,Widget child) {
    return child;
  }  

  @override
  Duration get transitionDuration => Duration.zero;
}