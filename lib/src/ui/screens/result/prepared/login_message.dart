
import 'package:babiconsultancy/src/config/assets.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/ui/screens/login/login_screen.dart';
import 'package:babiconsultancy/src/ui/screens/result/multi/result_step_args.dart';

const List<ResultStepArgs> loginApprovalArgs = [
  ResultStepArgs(
    title: LocalizationKeys.User_Confirmation_Info_Title,
    description: LocalizationKeys.User_Confirmation_Info_Description,
    lottieAsset: Assets.owlAnim,
    routeCallBack: LoginScreen.route
  )
];