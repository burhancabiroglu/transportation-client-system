import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:flutter/material.dart';

class OnboardingItem extends CoreStatelessWidget {
  const OnboardingItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String description = "Su ayak izini hesapla\nve ortalama su tüketimini\nöğren!";
    return Container(
      color: Colors.transparent,
      child: Flex(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        direction: Axis.vertical,
        children: [
          /*Image.asset(
            AppAssets.onboarding.append("hesapla.png"),
            width: SizeGuide.onboardingImageW,
          ),*/
          const Spacer(),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: theme.colorScheme.textPrimary,
              fontSize: 4,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
