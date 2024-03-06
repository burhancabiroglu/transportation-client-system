import 'package:babiconsultancy/main.dart';
import 'package:babiconsultancy/src/core/base/core_theme.dart';
import 'package:babiconsultancy/src/core/localization/localization_manager.dart';
import 'package:flutter/material.dart';

abstract class CoreStatefulWidget extends StatefulWidget {
  const CoreStatefulWidget({super.key});

  @override
  @mustCallSuper
  CoreWidgetState createState();
}

abstract class CoreWidgetState<T extends CoreStatefulWidget> extends State<T> {

  CoreTheme get theme => appTheme;
  LocalizationManager get localization => LocalizationManager();
  bool get isKeyboardOpened => !(MediaQuery.of(context).viewInsets.bottom == 0);


  @override 
  @mustCallSuper
  Widget build(BuildContext context);
}