import 'dart:async';

import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/config/assets.dart';
import 'package:babiconsultancy/src/core/theme/app_theme.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/ui/screens/register/register_cubit.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/primary_variant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class RegisterForm extends CoreStatelessWidget {
  final RegisterCubit cubit;
  const RegisterForm({
    Key? key,
    required this.cubit,
  }): super(key: key);

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
            name: RegisterCubit.email,
            autofillHints: const <String>[AutofillHints.email],
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            style: theme.textStyle.body04,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(errorText: "E-posta adresi boş olamaz"),
              FormBuilderValidators.email(errorText: "Geçerli bir e-posta adresi giriniz")
            ]),
            decoration: theme.inputDecoration(
              hintText: 'E-posta adresiniz',
              prefixIcon: Assets.email.toSvg(padding: EdgeInsets.all(18.h)),
            ),
          ),
          SizedBox(height: 24.h),
          StreamBuilder(
            stream: hideStream.stream,
            builder: (context, snapshot) =>
              FormBuilderTextField(
                autocorrect: false,
                autofillHints: const <String>[AutofillHints.password],
                style: theme.textStyle.body04,
                name: RegisterCubit.password,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(errorText: "Şifre boş olamaz")
                ]),
                obscureText: snapshot.data ?? false,
                decoration: theme.inputDecoration(
                  hintText: 'Şifreniz',
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
          
          SizedBox(height: 36.h),
          PrimaryVariantButton(
            text: "Üye Ol",
            onClick: () {
              cubit.formKey.currentState?.validate();
              //if (!form.valid) return form.markAllAsTouched();
              //form.unfocus();
              //TextInput.finishAutofillContext();
            },
          )
        ],
      ),
    );
  }
}