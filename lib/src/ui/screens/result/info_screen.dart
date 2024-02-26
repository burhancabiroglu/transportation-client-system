import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/config/assets.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/primary.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class InfoScreen extends CoreStatelessWidget {
  static const String route = "/info";
  
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: theme.colorScheme.white,
      extendBody: true,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: WindowDefaults.wall),
        child: Center(
          heightFactor: 1.4,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset(
                Assets.successAnim,
                repeat: false,
                animate: true,
                height: 300.h
              ),
              Text(
                "data",
                style: theme.textStyle.heading02,
              ),
              SizedBox(height: 24.h),
              Text(
                "Lorem ipsum dolor sit amet consectetur. Et tellus donec euismod neque a neque vitae in elementum.",
                style: theme.textStyle.callout02,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: PrimaryButton(
        text: localization.of(LocalizationKeys.Continue),
        margin: EdgeInsets.symmetric(
          horizontal: WindowDefaults.wall,
          vertical: WindowDefaults.verticalPadding
        ),
      ),
    );
  }
}