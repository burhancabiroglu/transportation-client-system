import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/result/transfer_not_found.dart';
import 'package:flutter/material.dart';

class TransferScreen extends CoreStatelessWidget {
  static const route = "/main/transfers";

  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TransferNotFoundView();
  }
}