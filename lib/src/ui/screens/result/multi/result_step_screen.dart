import 'package:babiconsultancy/src/config/assets.dart';
import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ResultStepScreen extends CoreStatelessWidget {
  const ResultStepScreen({super.key});

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
          Lottie.asset(Assets.successAnim,
              repeat: false, animate: true, height: 280.h),
          Text(
            "data",
            style: theme.textStyle.heading02,
          ),
          SizedBox(height: 24.h),
          Text(
            "Lorem ipsum dolor sit amet consectetur. Et tellus donec euismod neque a neque vitae in elementum.",
            style: theme.textStyle.body03,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
