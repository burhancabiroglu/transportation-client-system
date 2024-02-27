import 'package:babiconsultancy/src/ui/screens/aboutus/about_us_screen.dart';
import 'package:babiconsultancy/src/ui/screens/main/main_screen.dart';
import 'package:babiconsultancy/src/ui/screens/result/success_screen.dart';
import 'package:babiconsultancy/src/ui/screens/splash/splash_screen.dart';
import 'package:babiconsultancy/src/ui/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

Route mainRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.route:
      return MaterialPageRoute(builder: (_) => const SplashScreen());
    case WelcomeScreen.route:
      return MaterialPageRoute(builder: (_) => const WelcomeScreen());
    case MainScreen.route:
      return MaterialPageRoute(builder: (_) => const MainScreen());
    case SuccessScreen.route:
      return MaterialPageRoute(builder: (_) => const SuccessScreen());
    case AboutUsScreen.route:
      return MaterialPageRoute(builder: (_) => const AboutUsScreen());
    default:
      return MaterialPageRoute(builder: (_) => const SplashScreen());
  }
}