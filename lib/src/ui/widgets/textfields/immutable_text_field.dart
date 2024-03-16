import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:flutter/material.dart';

class ImmutableTextField extends CoreStatelessWidget {
  const ImmutableTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: theme.colorScheme.disabled.withOpacity(0.6),
        border: Border.all(color: theme.colorScheme.disabled),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Transfer Tipi",
            style: theme.textStyle.caption02
                .copyWith(color: theme.colorScheme.textSecondary),
          ),
          SizedBox(height: 4.h),
          Text(
            "Hava Limanı Transferi",
            style: theme.textStyle.footnote01
                .copyWith(color: theme.colorScheme.primary),
          ),
        ],
      ),
    );
  }
}
