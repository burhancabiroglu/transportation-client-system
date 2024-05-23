
import 'package:babiconsultancy/src/config/assets.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_screen.dart';
import 'package:babiconsultancy/src/ui/screens/result/multi/result_step_args.dart';

List<ResultStepArgs> registerSuccessArgs = [
  ResultStepArgs(
    title: LocalizationKeys.Register_Successful_Title,
    description: LocalizationKeys.Register_Successful_Description,
    lottieAsset: Assets.successAnim,
    routeCallBack: () => CoreRouter.main.popAndPushNamed(LoginScreen.route)
  )
];