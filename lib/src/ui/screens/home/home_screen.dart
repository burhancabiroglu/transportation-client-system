import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/text_button.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/date_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends CoreStatelessWidget {
  static const route = "/main/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DateWidget(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(top: 20.w,right: 32.h)
        ),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: WindowDefaults.wall),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(localization.of(LocalizationKeys.Home_Transfers), style: theme.textStyle.body04),
                  CoreTextButton(
                    text: localization.of(LocalizationKeys.More),
                    style: theme.textStyle.callout01.copyWith(
                      fontSize: 13,
                      color: theme.colorScheme.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: theme.colorScheme.primary,
                    ),
                  )
                ],
              ),
              SizedBox(height: 200.h)
            ],
          ),
        ),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: WindowDefaults.wall),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(localization.of(LocalizationKeys.About_Us_Title), style: theme.textStyle.body04),
                  CoreTextButton(
                    text: localization.of(LocalizationKeys.More),
                    style: theme.textStyle.callout01.copyWith(
                      fontSize: 13,
                      color: theme.colorScheme.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: theme.colorScheme.primary,
                    ),
                    onPressed: (){},
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}