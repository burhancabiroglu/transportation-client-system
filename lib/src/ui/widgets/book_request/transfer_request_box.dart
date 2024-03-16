import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/ui/widgets/book_request/transfer_request_tile.dart';
import 'package:flutter/material.dart';

class TransferRequestBox extends CoreStatelessWidget {
  const TransferRequestBox({super.key});

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(16);
    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        height: 180.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: theme.colorScheme.disabled.withOpacity(0.6),
        ),
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) => 
             const TransferRequestTile()       
        ),
      ),
    );
  }
}