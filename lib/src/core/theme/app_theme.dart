import 'package:babiconsultancy/src/core/base/core_theme.dart';
import 'package:babiconsultancy/src/core/theme/app_color_scheme.dart';
import 'package:babiconsultancy/src/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class BabiAppTheme extends CoreTheme {
  const BabiAppTheme();
  
  @override
  final CoreColorScheme colorScheme = const BabiAppColorScheme();

  @override
  final CoreTextStyle textStyle = const BabiAppTextStyle();
}

extension BabiAppThemeExtensions on CoreTheme {
  InputBorder focusedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: colorScheme.textSecondary.withAlpha(80))
    );
  }

  InputDecoration inputDecoration({
    required String hintText,
    Widget? prefixIcon,
    Widget? suffixIcon
  }) {
    return InputDecoration(
      hintText: hintText,
      fillColor: colorScheme.white,
      prefixIcon: prefixIcon,
      hintStyle: textStyle.callout02,
      filled: true,
      errorBorder: focusedBorder(),
      focusedBorder: focusedBorder(),
      enabledBorder: focusedBorder(),
      focusedErrorBorder: focusedBorder(),
      border: focusedBorder(),
      suffixIcon: suffixIcon
    );
}
}