import 'package:babiconsultancy/src/ui/screens/main/main_screen.dart';
import 'package:babiconsultancy/src/ui/screens/result/success_screen.dart';
import 'package:babiconsultancy/src/ui/screens/splash/splash_screen.dart';
import 'package:babiconsultancy/src/ui/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

Route routes(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.route:
      return MaterialPageRoute(builder: (_) => const SplashScreen());
    case WelcomeScreen.route:
      return MaterialPageRoute(builder: (_) => const WelcomeScreen());
    case MainScreen.route:
      return MaterialPageRoute(builder: (_) => const MainScreen());
    case SuccessScreen.route:
      return MaterialPageRoute(builder: (_) => const SuccessScreen());
    case '/auth':
      //return MaterialPageRoute(builder: (_) => AuthenticationScreen());
    default:
      return MaterialPageRoute(builder: (_) => const MainScreen());
  }
}