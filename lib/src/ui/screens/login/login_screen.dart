import 'package:babiconsultancy/src/core/base/core_stateful_widget.dart';
import 'package:babiconsultancy/src/config/assets.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_form.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_state.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/text_button.dart';
import 'package:babiconsultancy/src/ui/widgets/snackbar/core_snack_bar.dart';
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
    final cubit = BlocProvider.of<LoginCubit>(context);
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: theme.colorScheme.container,
        body: SafeArea(
          child: BlocListener<LoginCubit,LoginState>(
            bloc: cubit,
            listener: (context, state) {
              if(state is LoginStateError) {
                 CoreSnackBar.error(message: localization.of(state.message?? "")).show(context);
              }
            },
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: WindowDefaults.wall),
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Assets.app_logo.toSquareImage(size: 300.h),
                      SizedBox(height: 40.h),
                      LoginForm(cubit: cubit),
                      SizedBox(height: 100.h),
                      AnimatedOpacity(
                        opacity: isKeyboardOpened ? 0 : 1, 
                        duration: Durations.medium4,
                        child: Column(
                          children: [
                            Text(
                              localization.of(LocalizationKeys.Form_Register_Description), 
                              style: theme.textStyle.callout02
                            ),
                            CoreTextButton(
                              text: localization.of(LocalizationKeys.Form_Register), 
                              style: theme.textStyle.body01.copyWith(
                                decoration: TextDecoration.underline,
                                color: theme.colorScheme.primary
                              ),
                              onPressed: cubit.routeToRegister,
                            ),
                          ]
                        ),
                      )
                    ]
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

