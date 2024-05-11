import 'package:babiconsultancy/main.dart';
import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/handler/core_client.dart';
import 'package:babiconsultancy/src/backend/model/login/login_request.dart';
import 'package:babiconsultancy/src/backend/repo/auth_repo.dart';
import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_state.dart';
import 'package:babiconsultancy/src/ui/screens/register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class LoginCubit extends Cubit {
  static const String emailRef = "email";
  static const String passwordRef = "password";

  final AuthRepo repo;
  final formKey = GlobalKey<FormBuilderState>();

  FormBuilderState? get form => formKey.currentState;
  String get email => form?.fields[emailRef]?.value ?? "";
  String get password => form?.fields[passwordRef]?.value ?? "";

  LoginCubit({required this.repo}): super(LoginState.none);
  

  void routeToRegister() {
    CoreRouter.main.popAndPushNamed(RegisterScreen.route);
  }

  void login() async {
    FocusManager.instance.primaryFocus?.unfocus();
    if(form?.validate() != true) return;
    EasyLoading.show();
    repo.login(LoginRequest(email, password))
      .successListener((value) async { 
        CoreClient.authorizationToken = value.accessToken;
        repo.profile().successListener((data) {
          logger.e(value);
         });
      })
      .errorListener((error) { 

      })
      .completeListener((result) {
          EasyLoading.dismiss();
       })
    ;  
  }

  void clearErrorStates(String fieldText){
    final field = form?.fields[fieldText];
    if(field?.hasError == true) {
       field?.reset();
    }
  }
}