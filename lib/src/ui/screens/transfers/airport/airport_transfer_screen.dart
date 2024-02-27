import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/result/transfer_not_found.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/app_bar.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/rounded_body.dart';
import 'package:flutter/material.dart';

class AirportTransferScreen extends CoreStatelessWidget {
  static const route = "/main/airport_transfers";

  const AirportTransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.darken,
      appBar: CoreAppBar(title: Text(localization.of(LocalizationKeys.Airport_Transfer_Title))),
      body: const RoundedBody(
        child: TransferNotFoundView(),
      ),
    );
  }
}