import 'package:babiconsultancy/src/core/base/core_stateful_widget.dart';
import 'package:babiconsultancy/src/config/assets.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:babiconsultancy/src/ui/screens/register/register_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/register/register_form.dart';
import 'package:babiconsultancy/src/ui/screens/register/register_state.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/text_button.dart';
import 'package:babiconsultancy/src/ui/widgets/snackbar/core_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends CoreStatefulWidget {
  static const String route = "register";
  const RegisterScreen({super.key});
  
  @override
  CoreWidgetState createState() => RegisterScreenState();
} 

class RegisterScreenState extends CoreWidgetState<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<RegisterCubit>(context);
    return GestureDetector(
      child: Scaffold(
        backgroundColor: theme.colorScheme.container,
        body: SafeArea(
          child: BlocListener<RegisterCubit,RegisterState>(
            bloc: bloc,
            listener: (context, state) {
              if(state is RegisterStateError) {
                 CoreSnackBar.error(message: localization.of(state.message?? "")).show(context);
              }
            },
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
              reverse: true,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: WindowDefaults.wall),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(500),
                        child: Assets.app_logo.toSquareImage(size: 120.h),
                      ),
                      SizedBox(height: 72.h),
                      RegisterForm(cubit: bloc),
                      SizedBox(height: 100.h),
                      AnimatedOpacity(
                        opacity: isKeyboardOpened ? 0 : 1, 
                        duration: const Duration(milliseconds: 400),
                        child: Column(
                          children: [
                            Text(
                              localization.of(LocalizationKeys.Form_Login_Description), 
                              style: theme.textStyle.callout02),
                            CoreTextButton(
                              text: localization.of(LocalizationKeys.Form_Login), 
                              style: theme.textStyle.body01.copyWith(
                                decoration: TextDecoration.underline,
                                color: theme.colorScheme.primary
                              ),
                              onPressed: bloc.routeToLogin,
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

