import 'package:babiconsultancy/src/ui/screens/home/home_screen.dart';
import 'package:babiconsultancy/src/ui/screens/profile/profile_screen.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/airport/airport_transfer_screen.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/default/transfer_screen.dart';
import 'package:flutter/material.dart';

Route homeRoutes(RouteSettings settings) {
  switch (settings.name) {
    case HomeScreen.route:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    case TransferScreen.route:
      return MaterialPageRoute(builder: (_) => const TransferScreen());
    case AirportTransferScreen.route:
      return MaterialPageRoute(builder: (_) => const AirportTransferScreen());
    case ProfileScreen.route:
      return MaterialPageRoute(builder: (_) => const ProfileScreen());
    default:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
  }
}