import 'dart:async';
import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/config/assets.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/theme/app_theme.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/ui/screens/register/register_cubit.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/primary.dart';
import 'package:babiconsultancy/src/core/libs/validators/form_builder_validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class RegisterForm extends CoreStatelessWidget {
  final RegisterCubit cubit;
  const RegisterForm({
    super.key,
    required this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    final hideStream = StreamController<bool>()..add(true);
    return FormBuilder(
      key: cubit.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FormBuilderTextField(
            name: RegisterCubit.fullnameRef,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            style: theme.textStyle.body04,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(errorText: localization.of(LocalizationKeys.Error_FullName_Required)),
            ]),
            onChanged: (_) => cubit.clearErrorStates(RegisterCubit.fullnameRef),
            decoration: theme.inputDecoration(
              hintText: localization.of(LocalizationKeys.Form_FullName),
              prefixIcon: Assets.email.toSvg(padding: EdgeInsets.all(18.h)),
            ),
          ),
          SizedBox(height: 24.h),
          FormBuilderTextField(
            name: RegisterCubit.emailRef,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            style: theme.textStyle.body04,
            onChanged: (_) => cubit.clearErrorStates(RegisterCubit.emailRef),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(errorText: localization.of(LocalizationKeys.Error_Email_Required)),
              FormBuilderValidators.email(errorText: localization.of(LocalizationKeys.Error_Email_Format))
            ]),
            decoration: theme.inputDecoration(
              hintText: localization.of(LocalizationKeys.Form_Email),
              prefixIcon: Assets.email.toSvg(padding: EdgeInsets.all(18.h)),
            ),
          ),
          SizedBox(height: 24.h),
          StreamBuilder(
            stream: hideStream.stream,
            builder: (context, snapshot) =>
              FormBuilderTextField(
                autocorrect: false,
                style: theme.textStyle.body04,
                name: RegisterCubit.passwordRef,
                onChanged: (_) => cubit.clearErrorStates(RegisterCubit.passwordRef),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(errorText: localization.of(LocalizationKeys.Error_Password_Required)),
                  FormBuilderValidators.minLength(6,errorText: localization.of(LocalizationKeys.Error_Password_Length)),
                  FormBuilderValidators.match(r'[A-Z]',errorText: localization.of(LocalizationKeys.Error_Password_Uppercase)),
                  FormBuilderValidators.match(r'\d',errorText: localization.of(LocalizationKeys.Error_Password_Decimal))
                ]),
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
          SizedBox(height: 24.h),
          /*FormBuilderTextField(
            autocorrect: false,
            style: theme.textStyle.body04,
            name: RegisterCubit.passwordAgainRef,
            onChanged: (_) => cubit.clearErrorStates(RegisterCubit.passwordAgainRef),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(errorText: "Şifre boş olamaz"),
              FormBuilderValidators.equal<String>(
                cubit.form?.instantValue[RegisterCubit.passwordRef] ?? '',
                errorText: "Parolalar eşleşmiyor"
              ),
            ]),
            obscureText: false,
            decoration: theme.inputDecoration(
              hintText: 'Şifreniz (Tekrar)',
              prefixIcon: Assets.padlock.toSvg(padding: EdgeInsets.all(18.h)),
            ),
          ),*/
          SizedBox(height: 36.h),
          PrimaryButton(
            text: localization.of(LocalizationKeys.Form_Register),
            onClick: cubit.register
          )
        ],
      ),
    );
  }
}