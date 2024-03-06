import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class RegisterCubit extends Cubit {
  static const String fullname = "email";
  static const String email = "email";
  static const String password = "password";
  static const String passwordAgain = "password_again";

  final formKey = GlobalKey<FormBuilderState>();

  RegisterCubit(): super(0);


  void routeToLogin() {
    CoreRouter.main.popAndPushNamed(LoginScreen.route);
  }

}