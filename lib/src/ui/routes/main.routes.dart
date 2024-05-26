import 'package:babiconsultancy/src/core/utils/route_extension.dart';
import 'package:babiconsultancy/src/ui/screens/aboutus/about_us_screen.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_screen.dart';
import 'package:babiconsultancy/src/ui/screens/main/main_screen.dart';
import 'package:babiconsultancy/src/ui/screens/profile/info/profile_info_screen.dart';
import 'package:babiconsultancy/src/ui/screens/profile/support/profile_support_screen.dart';
import 'package:babiconsultancy/src/ui/screens/register/register_screen.dart';
import 'package:babiconsultancy/src/ui/screens/result/multi/multi_result_screen.dart';
import 'package:babiconsultancy/src/ui/screens/result/success_screen.dart';
import 'package:babiconsultancy/src/ui/screens/splash/splash_screen.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/approve/transfer_approve_screen.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/request/transfer_request_screen.dart';
import 'package:flutter/material.dart';

Route mainRoutes(RouteSettings settings) {
  final screen = switch (settings.name) {
    RegisterScreen.route => const RegisterScreen(),
    LoginScreen.route => const LoginScreen(),
    SplashScreen.route => const SplashScreen(),
    MainScreen.route => const MainScreen(),
    SuccessScreen.route => const SuccessScreen(),
    ProfileInfoScreen.route => 
      ProfileInfoScreen(
        args: settings.args(ProfileInfoScreen.argsKey),
      ),
    ProfileSupportScreen.route => const ProfileSupportScreen(),
    AboutUsScreen.route => const AboutUsScreen(),
    
    MultiResultScreen.route =>
      MultiResultScreen(args: settings.args(MultiResultScreen.argsKey)),

    TransferRequestScreen.route => TransferRequestScreen(
      args: settings.args(TransferRequestScreen.argsKey),
    ),

    TransferApproveScreen.route => TransferApproveScreen(
      args: settings.args(TransferApproveScreen.argsKey),
    ),
    _ => const SplashScreen()
  };
  return MaterialPageRoute(builder: (_) => screen);
}