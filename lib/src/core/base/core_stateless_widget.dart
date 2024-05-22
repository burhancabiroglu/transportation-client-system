import 'package:babiconsultancy/main.dart';
import 'package:babiconsultancy/src/core/base/core_theme.dart';
import 'package:babiconsultancy/src/core/localization/localization_manager.dart';
import 'package:flutter/material.dart';

abstract class CoreStatelessWidget extends StatelessWidget {
  const CoreStatelessWidget({super.key});

  CoreTheme get theme => appTheme;
  CoreColorScheme get colorScheme => appTheme.colorScheme;
  CoreTextStyle get textStyle => appTheme.textStyle;

  LocalizationManager get localization => LocalizationManager();
  
  @override
  @mustCallSuper
  Widget build(BuildContext context);
}
