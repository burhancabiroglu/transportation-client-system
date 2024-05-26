import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/model/register/register_request.dart';
import 'package:babiconsultancy/src/backend/repo/auth_repo.dart';
import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_screen.dart';
import 'package:babiconsultancy/src/ui/screens/result/multi/multi_result_screen.dart';
import 'package:babiconsultancy/src/ui/screens/result/prepared/register_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  static const String fullnameRef = "fullname";
  static const String emailRef = "email";
  static const String passwordRef = "password";
  static const String passwordAgainRef = "password_again";

  final AuthRepo repo;
  final formKey = GlobalKey<FormBuilderState>();

  FormBuilderState? get form => formKey.currentState;
  String get fullname => form?.fields[fullnameRef]?.value ?? "";
  String get email => form?.fields[emailRef]?.value ?? "";
  String get password => form?.fields[passwordRef]?.value ?? "";
  String get passwordAgain => form?.fields[passwordAgainRef]?.value ?? "";

  RegisterCubit({required this.repo}): super(RegisterState.none);

  void routeToLogin() {
    CoreRouter.main.popAndPushNamed(LoginScreen.route);
  }

  void routeToSuccess() {
    CoreRouter.main.popAndPushNamed(
      MultiResultScreen.route, 
      arguments: { MultiResultScreen.argsKey: registerSuccessArgs }
    );
  }

  void register() {
    FocusManager.instance.primaryFocus?.unfocus();
    if(form?.saveAndValidate() != true) return;
    EasyLoading.show();
    final split = fullname.split(" ");
    final name = split[0];
    final surname = split.length > 1 ? split[1] : "";
    final request = RegisterRequest(email: email, name: name, surname: surname, password: password);
    repo.register(request)
      .successListener((data) => routeToSuccess())
      .errorListener((error) => emit(RegisterState.error(message: error.message)))
      .completeListener((result) => EasyLoading.dismiss());
  }

  void clearErrorStates(String fieldText){
    final field = form?.fields[fieldText];
    if(field?.hasError == true) {
       field?.reset();
    }
  }
}