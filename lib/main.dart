import 'package:babiconsultancy/src/config/config.dart';
import 'package:babiconsultancy/src/core/theme/app_theme.dart';
import 'package:babiconsultancy/src/core/window/window_size.dart';
import 'package:babiconsultancy/src/module/injection.dart';
import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/screens/aboutus/about_us_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/home/home_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/main/main_nav_bloc.dart';
import 'package:babiconsultancy/src/ui/screens/profile/profile_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/register/register_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/splash/splash_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/approve/transfer_approve_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/nodes/airport_transfer_screen.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/nodes/default_transfer_screen.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/request/transfer_request_cubit.dart';
import 'package:babiconsultancy/src/ui/widgets/book_request/transfer_request_cubit.dart';
import 'package:babiconsultancy/src/ui/widgets/ticket/transfer_box_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:logger/logger.dart';
import 'src/ui/routes/main.routes.dart';

const appTheme = BabiAppTheme();
final logger = Logger();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting();
  initScreenSize();
  await setup();
  runApp(const BabiConsultancyApp());
}

void initScreenSize() {
  final view = WidgetsBinding.instance.platformDispatcher.views.single;
  final MediaQueryData data = MediaQueryData.fromView(view);
  WindowSize.init(data.size);
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorColor = Colors.white
    ..textColor = Colors.white
    ..backgroundColor = appTheme.colorScheme.darken
    ..maskType = EasyLoadingMaskType.black
    ..indicatorSize = 70.0
    ..radius = 10.0
    ..progressColor = Colors.yellow;
}

class BabiConsultancyApp extends StatelessWidget {
  const BabiConsultancyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => MainNavCubit()),
        BlocProvider(create: (_) => HomeCubit()),
        BlocProvider(create: (_) => DefaultTransferCubit(repo: injector(), session: injector())),
        BlocProvider(create: (_) => AirportTransferCubit(repo: injector(), session: injector())),
        BlocProvider(create: (_) => TransferBoxCubit(repo: injector())),
        BlocProvider(create: (_) => TransferRequestBoxCubit(repo: injector())),
        BlocProvider(create: (_) => TransferRequestCubit(repo: injector(), session: injector())),
        BlocProvider(create: (_) => LoginCubit(repo: injector(), session: injector())),
        BlocProvider(create: (_) => RegisterCubit(repo: injector())),
        BlocProvider(create: (_) => AboutUsCubit(storage: injector())),
        BlocProvider(create: (_) => SplashCubit(session: injector())),
        BlocProvider(create: (_) => TransferApproveCubit(repo: injector(),session: injector())),
        BlocProvider(create: (_) => ProfileCubit(repo: injector()))
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