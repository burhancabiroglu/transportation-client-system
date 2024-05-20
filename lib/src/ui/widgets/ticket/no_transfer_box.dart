import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/config/assets.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:flutter/material.dart';

class NoTransferBox extends CoreStatelessWidget {
  const NoTransferBox({super.key});

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(16);
    return Container(
        width: double.infinity,
        height: 180.h,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: theme.colorScheme.disabled.withOpacity(0.5)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.result_not_found.toSvg(width: 80.w),
            Text(
              localization.of(LocalizationKeys.Transfer_Not_Found),
              style: theme.textStyle.footnote02.copyWith(color: theme.colorScheme.textSecondary),
            ),
            SizedBox(height: 24.h)
          ]
      )
    );
  }
}
