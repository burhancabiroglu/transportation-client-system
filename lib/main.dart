import 'package:babiconsultancy/src/core/config/config.dart';
import 'package:babiconsultancy/src/core/theme/app_theme.dart';
import 'package:babiconsultancy/src/core/window/window_size.dart';
import 'package:babiconsultancy/src/module/injection.dart';
import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/screens/aboutus/about_us_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/home/home_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/main/main_nav_bloc.dart';
import 'package:babiconsultancy/src/ui/screens/register/register_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/splash/splash_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/default/transfer_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:logger/logger.dart';
import 'src/ui/routes/main.routes.dart';

const appTheme = BabiAppTheme();
final logger = Logger();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initScreenSize();
  await setup();
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
        BlocProvider(create: (_) => HomeCubit()),
        BlocProvider(create: (_) => TransferCubit()),
        BlocProvider(create: (_) => LoginCubit(repo: injector())),
        BlocProvider(create: (_) => RegisterCubit(repo: injector())),
        BlocProvider(create: (_) => AboutUsCubit(storage: injector())),
        BlocProvider(create: (_) => SplashCubit(storage: injector()))
      ],
      child: MaterialApp(
        title: AppConfig.APP_NAME,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: mainRoutes,
        navigatorKey: CoreRouter.main.key,
        builder: EasyLoading.init(),
      ),
    );
  }
}