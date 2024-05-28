import 'package:babiconsultancy/main.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/localization/localization_manager.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/primary.dart';
import 'package:flutter/material.dart';

Future<T?> alertDialog<T>({
  String? title,
}) {
  final localization = LocalizationManager();
  final colorScheme = appTheme.colorScheme;
  final textStyle = appTheme.textStyle;
  return showDialog<T>(
    context: CoreRouter.main.key.currentContext!,
    builder: (BuildContext context) {
      return AlertDialog(
        icon: Icon(
          Icons.error_outline,
          color: Colors.orange,
          size: 56.h,
        ),
        title: Text(
          title ?? "",
          style: textStyle.body02.copyWith(color: colorScheme.textPrimary),
        ),
        content: PrimaryButton(
          text: localization.of(LocalizationKeys.Okay),
          margin: EdgeInsets.symmetric(horizontal: 36.w),
          onClick:CoreRouter.main.pop,
        ),
      );
    },
  );
}
