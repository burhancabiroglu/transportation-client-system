import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class RegisterCubit extends Cubit {
  static const String fullname = "email";
  static const String email = "email";
  static const String password = "password";
  final formKey = GlobalKey<FormBuilderState>();

  RegisterCubit(): super(0);
  

}