import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/model/login/login_request.dart';
import 'package:babiconsultancy/src/backend/repo/auth_repo.dart';
import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_state.dart';
import 'package:babiconsultancy/src/ui/screens/register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class LoginCubit extends Cubit {
  static const String email = "email";
  static const String password = "password";

  final AuthRepo repo;
  final formKey = GlobalKey<FormBuilderState>();

  LoginCubit({required this.repo}): super(LoginState.none);
  

  void routeToRegister() {
    CoreRouter.main.popAndPushNamed(RegisterScreen.route);
  }

  void login(LoginRequest body) async {
    final response = await repo.login(body);
    response
      .successListener((value) {
        
      })
      .errorListener((value) {

      })
      .completeListener((value) {
        
      });
  }
}