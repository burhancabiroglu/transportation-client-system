import 'package:babiconsultancy/src/core/config/config.dart';
import 'package:babiconsultancy/src/core/theme/app_theme.dart';
import 'package:babiconsultancy/src/core/window/window_size.dart';
import 'package:babiconsultancy/src/ui/screens/home/home_bloc.dart';
import 'package:babiconsultancy/src/ui/screens/main/main_nav_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => MainNavBloc()),
        BlocProvider(create: (_) => HomeBloc())
      ],
      child: const MaterialApp(
        title: AppConfig.APP_NAME,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: mainRoutes
      ),
    );
  }
}