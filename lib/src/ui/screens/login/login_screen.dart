import 'package:babiconsultancy/src/core/base/core_stateful_widget.dart';
import 'package:babiconsultancy/src/core/config/assets.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_form.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends CoreStatefulWidget {
  static const String route = "login";
  const LoginScreen({super.key});
  
  @override
  CoreWidgetState createState() => LoginScreenState();
} 

class LoginScreenState extends CoreWidgetState<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<LoginCubit>(context);
    return GestureDetector(
      child: Scaffold(
        backgroundColor: theme.colorScheme.container,
        body: SafeArea(
          child: BlocBuilder(
            bloc: bloc,
            builder: (context,state) {
              return Align(
                alignment: Alignment.bottomCenter,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: WindowDefaults.wall),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(500),
                          child: Assets.app_logo.toSquareImage(size: 180.h),
                        ),
                        SizedBox(height: 100.h),
                        LoginForm(cubit: bloc),
                        SizedBox(height: 100.h),
                        AnimatedOpacity(
                          opacity: isKeyboardOpened ? 0 : 1, 
                          duration: const Duration(milliseconds: 400),
                          child: Column(
                            children: [
                              Text( "Ya da üye değilsen", style: theme.textStyle.callout02),
                              CoreTextButton(
                                text:  "Üye ol",
                                style: theme.textStyle.body01.copyWith(
                                  decoration: TextDecoration.underline,
                                  color: theme.colorScheme.primary
                                ),
                                onPressed: bloc.routeToRegister,
                              ),
                            ]
                          ),
                        )
                      ]
                    ),
                  ),
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}

