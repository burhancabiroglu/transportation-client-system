import 'package:babiconsultancy/main.dart';
import 'package:babiconsultancy/src/core/base/app_theme.dart';
import 'package:babiconsultancy/src/core/localization/localization_manager.dart';
import 'package:flutter/material.dart';

abstract class CoreStatelessWidget extends StatelessWidget {
  const CoreStatelessWidget({super.key});

  CoreTheme get theme => appTheme;
  LocalizationManager get localization => LocalizationManager();
  
  @override
  @mustCallSuper
  Widget build(BuildContext context);
}
