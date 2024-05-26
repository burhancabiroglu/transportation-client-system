import 'package:babiconsultancy/src/backend/model/transfer/transfer_type.dart';
import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/theme/app_theme.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/approve/transfer_approve_args.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/approve/transfer_approve_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/approve/transfer_approve_state.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/primary.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/app_bar.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/rounded_body.dart';
import 'package:babiconsultancy/src/ui/widgets/snackbar/core_snack_bar.dart';
import 'package:babiconsultancy/src/ui/widgets/textfields/immutable_multi_line_text_field%20.dart';
import 'package:babiconsultancy/src/ui/widgets/textfields/immutable_text_field.dart';
import 'package:babiconsultancy/src/ui/widgets/textfields/immutable_text_field_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class TransferApproveScreen extends CoreStatelessWidget {
  static const String route = "transfer_approve";
  static const String argsKey = "transfer_approve_args";

  final TransferApproveArgs? args;
  
  const TransferApproveScreen({
    super.key, 
    this.args
  });

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<TransferApproveCubit>(context);
    if(args != null) {
      cubit.fetch(args!);
    }
    return SafeArea(
      top: false,
      child: Container(
        color: colorScheme.darken,
        child: Scaffold(
          extendBody: true,
          backgroundColor: colorScheme.darken,
          appBar: CoreAppBar(
            title: Text(localization.of(LocalizationKeys.Transfer_Request_Title)),
          ),
          body: BlocConsumer<TransferApproveCubit,TransferApproveState>(
            listener: (context, state) {
              if(state is TransferApproveStateError) {
                 CoreSnackBar.error(message: localization.of(state.message)).show(context);
              }
            },
            builder: (context, state) {
              if(state is TransferApproveStateNone) return const SizedBox();
              return RoundedBody(
                child: Container(
                  padding: EdgeInsets.all(20.h),
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        LocalizationKeys.lorem,
                        style: textStyle.footnote02,
                      ),
                      SizedBox(height: 16.h),
                      ImmutableTextField(
                        data: ImmutableTextFieldData(
                          label: localization.of(LocalizationKeys.TransferType_Label),
                          text: localization.of(TransferType.get(args?.type??"2").key)
                        ),
                      ),
                      SizedBox(height: 16.h),
                      ImmutableMultiLineTextField(
                        children: cubit.data,
                      ),
                      SizedBox(height: 24.h),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          localization.of(LocalizationKeys.Transfer_Request_Additional_Note),
                          style: textStyle.footnote01.copyWith(
                            color: colorScheme.primary,
                          ),
                        ),
                      ),
                      FormBuilder(
                        key: cubit.formKey,
                        child: FormBuilderTextField(
                          name: TransferApproveCubit.additionalNoteRef,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.done,
                          style: textStyle.body04,
                          minLines: 3,
                          maxLines: 10,
                          decoration: theme.inputDecoration(
                            hintText: localization.of(LocalizationKeys.Form_Description)
                          ),
                        ),
                      ),
                      const Spacer(),
                      PrimaryButton(
                        text: localization.of(LocalizationKeys.Transfer_Request_Send),
                        onClick: cubit.submit,
                      )
                    ],
                  )
                )
              );
            }
          ),
        ),
      ),
    );
  }
}