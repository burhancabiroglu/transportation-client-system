import 'package:babiconsultancy/main.dart';
import 'package:babiconsultancy/src/backend/model/transfer/transfer_type.dart';
import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/request/transfer_request_args.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/primary.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/app_bar.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/rounded_body.dart';
import 'package:babiconsultancy/src/ui/widgets/textfields/immutable_multi_line_text_field%20.dart';
import 'package:babiconsultancy/src/ui/widgets/textfields/immutable_text_field.dart';
import 'package:babiconsultancy/src/ui/widgets/textfields/immutable_text_field_data.dart';
import 'package:flutter/material.dart';

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
    logger.e(args.transferTypeId);
    return Container(
      color: colorScheme.darken,
      child: Scaffold(
          extendBody: true,
          backgroundColor: colorScheme.darken,
          appBar: CoreAppBar(
            title: Text(localization.of(LocalizationKeys.Transfer_Request_Title)),
          ),
          body: RoundedBody(
            child: Container(
              padding: const EdgeInsets.all(20),
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
                      label: "Transfer Tipi",
                      text: localization.of(TransferType.get(args.transferTypeId).key)
                    ),
                  ),
                  SizedBox(height: 16.h),
                  const ImmutableMultiLineTextField(),
                  const Spacer(),
                  PrimaryButton(
                    text: localization.of(LocalizationKeys.Transfer_Request_Send),
                    onClick: (){},
                  )
                ],
              )
            )
          ),
      ),
    );
  }
}