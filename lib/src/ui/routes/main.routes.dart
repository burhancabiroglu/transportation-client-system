import 'package:babiconsultancy/src/ui/screens/aboutus/about_us_screen.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_screen.dart';
import 'package:babiconsultancy/src/ui/screens/main/main_screen.dart';
import 'package:babiconsultancy/src/ui/screens/register/register_screen.dart';
import 'package:babiconsultancy/src/ui/screens/result/success_screen.dart';
import 'package:babiconsultancy/src/ui/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

Route mainRoutes(RouteSettings settings) {
  final screen = switch (settings.name) {
    RegisterScreen.route => const RegisterScreen(),
    LoginScreen.route => const LoginScreen(),
    SplashScreen.route => const SplashScreen(),
    MainScreen.route => const MainScreen(),
    SuccessScreen.route => const SuccessScreen(),
    AboutUsScreen.route => const AboutUsScreen(),
    _ => const SplashScreen()
  };
  return MaterialPageRoute(builder: (_) => screen);
  
}