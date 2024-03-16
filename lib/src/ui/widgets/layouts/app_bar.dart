import 'package:babiconsultancy/main.dart';
import 'package:babiconsultancy/src/core/base/core_theme.dart';
import 'package:flutter/material.dart';

class CoreAppBar extends AppBar {
  CoreTheme get theme => appTheme;
  @override
  // ignore: overridden_fields
  final Widget title;
  CoreAppBar({
    super.key,
    required this.title,
    super.actions,
    super.leading,
  });

  @override
  bool? get centerTitle => true;

  @override
  TextStyle? get titleTextStyle => theme.textStyle.title01;

  @override
  Color? get foregroundColor => theme.colorScheme.white;
  
  @override
  Color? get backgroundColor => theme.colorScheme.darken;
}