import 'package:babiconsultancy/src/core/config/images.dart';
import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/ui/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    return Container(
      color: theme.colorScheme.container,
      child: SafeArea(
        child: Stack(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: Image.asset(
                  Images.app_logo,
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 22),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.container,
                      borderRadius: BorderRadius.circular(14)
                    ),
                    child: SvgPicture.asset(Images.lock,width: 20),
                  ),
                  Text(
                   localization.of(LocalizationKeys.Splash_Description),
                   textAlign: TextAlign.center,
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