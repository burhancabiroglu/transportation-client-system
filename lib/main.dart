import 'package:babiconsultancy/src/core/config/config.dart';
import 'package:babiconsultancy/src/core/theme/app_theme.dart';
import 'package:babiconsultancy/src/core/window/window_size.dart';
import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/screens/home/home_bloc.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/main/main_nav_bloc.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/default/transfer_cubit.dart';
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
        BlocProvider(create: (_) => MainNavCubit()),
        BlocProvider(create: (_) => HomeBloc()),
        BlocProvider(create: (_) => TransferCubit()),
        BlocProvider(create: (_) => LoginCubit()),
      ],
      child: MaterialApp(
        title: AppConfig.APP_NAME,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: mainRoutes,
        navigatorKey: CoreRouter.main.key,
      ),
    );
  }
}