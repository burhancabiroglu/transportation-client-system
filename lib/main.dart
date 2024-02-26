import 'package:babiconsultancy/src/core/config/config.dart';
import 'package:babiconsultancy/src/core/theme/app_theme.dart';
import 'package:babiconsultancy/src/core/window/window_size.dart';
import 'package:flutter/material.dart';

import 'src/ui/routes/main.routes.dart';

const appTheme = BabiAppTheme();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initScreenSize();
  runApp(const BabiConsultancyApp());
}


void initScreenSize() {
  final view = WidgetsBinding.instance.platformDispatcher.views.single;
  final MediaQueryData data = MediaQueryData.fromView(view);
  WindowSize.init(data.size);
}

class BabiConsultancyApp extends StatelessWidget {
  const BabiConsultancyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: AppConfig.APP_NAME,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: mainRoutes
    );
  }
}