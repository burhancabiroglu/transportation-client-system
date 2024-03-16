import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:flutter/material.dart';

class ImmutableMultiLineTextField extends CoreStatelessWidget {
  const ImmutableMultiLineTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: WindowDefaults.verticalPadding),
      decoration: BoxDecoration(
        color: theme.colorScheme.disabled.withOpacity(0.6),
        border: Border.all(color: theme.colorScheme.disabled),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Ad Soyad",
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
          SizedBox(height: 16.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "İletişim",
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
          SizedBox(height: 16.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tarih",
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
        ],
      ),
    );
  }
}
