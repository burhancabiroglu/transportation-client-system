import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/app_bar.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/rounded_body.dart';
import 'package:flutter/material.dart';

class TransferRequestScreen extends CoreStatelessWidget {
  static const String route = "transfer_request";
  const TransferRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: theme.colorScheme.darken,
      child: Scaffold(
          extendBody: true,
          backgroundColor: theme.colorScheme.darken,
          appBar: CoreAppBar(
            title: Text(localization.of(LocalizationKeys.Transfer_Request_Title)),
          ),
          body: RoundedBody(
            child: Container(
              height: double.infinity,
              child: Text("deneme"),
            )
          ),
      ),
    );
  }
}