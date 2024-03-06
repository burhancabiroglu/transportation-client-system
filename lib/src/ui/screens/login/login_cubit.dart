import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/screens/register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class LoginCubit extends Cubit {
  static const String email = "email";
  static const String password = "password";
  final formKey = GlobalKey<FormBuilderState>();


  LoginCubit(): super(0);
  

  void routeToRegister() {
    CoreRouter.main.popAndPushNamed(RegisterScreen.route);
  }
}