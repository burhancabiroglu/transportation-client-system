import 'package:babiconsultancy/src/backend/model/transfer/transfer_type.dart';
import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/theme/app_theme.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/request/transfer_request_args.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/request/transfer_request_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/request/transfer_request_state.dart';
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

class TransferRequestScreen extends CoreStatelessWidget {
  static const String route = "transfer_request";
  static const String argsKey = "transfer_request_args_key";

  final TransferRequestArgs args;
  
  const TransferRequestScreen({
    super.key, 
    required this.args
  });

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<TransferRequestCubit>(context);
    cubit.fetch(args.transferTypeId);
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
          body: BlocConsumer<TransferRequestCubit,TransferRequestState>(
            listener: (context, state) {
              if(state is TransferRequestStateError) {
                 CoreSnackBar.error(message: localization.of(state.message)).show(context);
              }
            },
            builder: (context, state) {
              if(state is TransferRequestStateNone) return const SizedBox();
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
                          text: localization.of(TransferType.get(args.transferTypeId).key)
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
                          name: TransferRequestCubit.additionalNoteRef,
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