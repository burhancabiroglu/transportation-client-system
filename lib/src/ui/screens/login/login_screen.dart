import 'package:babiconsultancy/src/core/base/core_stateful_widget.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:flutter/material.dart';

class LoginScreen extends CoreStatefulWidget {
  const LoginScreen({super.key});
  
  @override
  CoreWidgetState createState() => LoginScreenState();
}

class LoginScreenState extends CoreWidgetState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: theme.colorScheme.container,
        body: SafeArea(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Padding(
                 padding: EdgeInsets.symmetric(horizontal: WindowDefaults.wall),
              ),
            ),
          ),
        ),
      ),
    );
  }
}