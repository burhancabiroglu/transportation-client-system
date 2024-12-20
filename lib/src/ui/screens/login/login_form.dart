import 'dart:async';

import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/config/assets.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/theme/app_theme.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_cubit.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/primary.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/text_button.dart';
import 'package:babiconsultancy/src/core/libs/validators/form_builder_validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class LoginForm extends CoreStatelessWidget {
  final LoginCubit cubit;
  const LoginForm({
    super.key,
    required this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    final hideStream = StreamController<bool>()..add(true);
    return AutofillGroup(
      child: FormBuilder(
        key: cubit.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FormBuilderTextField(
              name: LoginCubit.emailRef,
              autofillHints: const <String>[AutofillHints.email],
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              style: theme.textStyle.body04,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(errorText: localization.of(LocalizationKeys.Error_Email_Required)),
                FormBuilderValidators.email(errorText: localization.of(LocalizationKeys.Error_Email_Format))
              ]),
              decoration: theme.inputDecoration(
                hintText: localization.of(LocalizationKeys.Form_Email),
                prefixIcon: Assets.email.toSvg(padding: EdgeInsets.all(18.h)),
              ),
              onChanged: (_) => cubit.clearErrorStates(LoginCubit.emailRef),
            ),
            SizedBox(height: 24.h),
            StreamBuilder(
              stream: hideStream.stream,
              builder: (context, snapshot) =>
                FormBuilderTextField(
                  autocorrect: false,
                  autofillHints: const <String>[AutofillHints.password],
                  style: theme.textStyle.body04,
                  name: LoginCubit.passwordRef,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: localization.of(LocalizationKeys.Error_Password_Required))
                  ]),
                  onChanged: (_) => cubit.clearErrorStates(LoginCubit.passwordRef),
                  obscureText: snapshot.data ?? false,
                  decoration: theme.inputDecoration(
                    hintText: localization.of(LocalizationKeys.Form_Password),
                    prefixIcon: Assets.padlock.toSvg(padding: EdgeInsets.all(18.h)),
                    suffixIcon: Material(
                      color: Colors.transparent,
                      child: IconButton(
                        onPressed: () => hideStream.add(!snapshot.requireData),
                        icon: const Icon(Icons.visibility),
                        color: theme.colorScheme.primary
                      ),
                    ),
                  ),
                )
            ),
            Align(
              alignment: Alignment.centerRight,
              child: CoreTextButton(
                text: localization.of(LocalizationKeys.Form_ForgotPassword),
                style: theme.textStyle.body04.copyWith(color: theme.colorScheme.primary),
              ),
            ),
            SizedBox(height: 36.h),
            PrimaryButton(
              text: localization.of(LocalizationKeys.Form_Login),
              onClick: cubit.login
            )
          ],
        ),
      ),
    );
  }
}