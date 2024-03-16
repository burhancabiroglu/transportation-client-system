import 'package:babiconsultancy/src/ui/screens/aboutus/about_us_screen.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_screen.dart';
import 'package:babiconsultancy/src/ui/screens/main/main_screen.dart';
import 'package:babiconsultancy/src/ui/screens/register/register_screen.dart';
import 'package:babiconsultancy/src/ui/screens/result/success_screen.dart';
import 'package:babiconsultancy/src/ui/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

Route mainRoutes(RouteSettings settings) {
  switch (settings.name) {
    case RegisterScreen.route:
      return MaterialPageRoute(builder: (_) => const RegisterScreen());
    case LoginScreen.route:
      return MaterialPageRoute(builder: (_) => const LoginScreen());
    case SplashScreen.route:
      return MaterialPageRoute(builder: (_) => const MainScreen()); // SPLASH
    /*case WelcomeScreen.route:
      return MaterialPageRoute(builder: (_) => const WelcomeScreen()); */
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