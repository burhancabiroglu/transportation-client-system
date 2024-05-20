import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:babiconsultancy/src/ui/screens/result/multi/result_step_args.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ResultStepScreen extends CoreStatelessWidget {
  final ResultStepArgs args;

  const ResultStepScreen({
    super.key, 
    required this.args
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: WindowDefaults.wall),
      color: Colors.transparent,
      child: Flex(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        direction: Axis.vertical,
        children: [
          const Spacer(),
          Lottie.asset(args.lottieAsset,
              repeat: false, animate: true, height: 300.h),
          Text(
            localization.of(args.title),
            style: theme.textStyle.heading02,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 28.h),
          Text(
           localization.of(args.description),
            style: theme.textStyle.body03,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
