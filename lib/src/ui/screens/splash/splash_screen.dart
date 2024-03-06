import 'package:babiconsultancy/src/core/config/assets.dart';
import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/ui/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends CoreStatelessWidget {
  static const route = "/";
  
  const SplashScreen({super.key});


  void init(BuildContext context) {
      Future.delayed(const Duration(milliseconds: 2000),() async {
        await Navigator.of(context).popAndPushNamed(MainScreen.route);
      });
  }

  @override
  Widget build(BuildContext context) {
    init(context);
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: theme.colorScheme.white,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              heightFactor: 2.4,
              child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Assets.app_logo.toSquareImage(size: 300.h),
              )
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30.h),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 8.h),
                    padding: EdgeInsets.all(8.h),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.container,
                      borderRadius: BorderRadius.circular(14)
                    ),
                    child: Assets.lock.toSvg(width: 24.w),
                  ),
                  Text(
                    localization.of(LocalizationKeys.Splash_Description),
                    textAlign: TextAlign.center,
                    style: theme.textStyle.callout02,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}