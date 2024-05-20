import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/ui/screens/result/multi/result_step_screen.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/primary.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class MultiResultScreen extends CoreStatelessWidget {
  static const route = "/mutli-result";

  const MultiResultScreen({super.key});

  final List<Widget> pages = const [
    ResultStepScreen(),
    ResultStepScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(initialPage: 0);
    return Container(
      color: theme.colorScheme.white,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // WelcomeTextWidget(),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                itemCount: pages.length,
                itemBuilder: (context, index) => pages[index],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: SmoothPageIndicator(
                controller: pageController,
                count: pages.length,
                textDirection: TextDirection.ltr,
                effect: JumpingDotEffect(
                    dotHeight: 12,
                    dotWidth: 20,
                    dotColor: theme.colorScheme.primary.withAlpha(100),
                    activeDotColor: theme.colorScheme.primary,
                    spacing: 8),
                onDotClicked: (val) {},
              ),
            ),
            SizedBox(height: 120.h),
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 16,bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PrimaryButton(
                    text: "Devam Et",
                    onClick: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
