import 'package:babiconsultancy/main.dart';
import 'package:babiconsultancy/src/backend/handler/session/session_manager.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/localization/localization_manager.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/module/injection.dart';
import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_screen.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/primary.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

Future<T?> logoutBottomSheet<T>() {
  final localization = LocalizationManager();
  final colorScheme = appTheme.colorScheme;
  final textStyle = appTheme.textStyle;

  void logout() async {
    EasyLoading.show();
    injector.get<SessionManager>().logout();
    CoreRouter.main.pop();
    CoreRouter.reset();
    await Future.delayed(Durations.extralong1);
    CoreRouter.main.popAndPushNamed(LoginScreen.route);
    EasyLoading.dismiss();
  }
  return showModalBottomSheet<T>(
    context: CoreRouter.main.key.currentContext!,
    backgroundColor: Colors.white,
    builder: (BuildContext context) {
      return SizedBox(
        height: 320.h,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.error_outline,
                color: Colors.orange,
                size: 56.h,
              ),
              SizedBox(height: 18.h),
              Text(
                localization.of(LocalizationKeys.Logout_Dialog),
                style: textStyle.body02.copyWith(color: colorScheme.textPrimary),
              ),
              SizedBox(height: 24.h),
              PrimaryButton(
                text: localization.of(LocalizationKeys.Yes),
                margin: EdgeInsets.symmetric(horizontal: 36.w),
                onClick: logout,
              ),
              SizedBox(height: 6.h),
              CoreTextButton(
                text: localization.of(LocalizationKeys.No),
                onPressed: CoreRouter.main.pop,
                style: textStyle.heading03.copyWith(color: colorScheme.primary),
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      );
    },
  );
}
