import 'package:babiconsultancy/src/ui/screens/welcome/onboarding_item.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/outlined.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/primary.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class WelcomeScreen extends StatelessWidget {
  static const route = "/welcome";

  const WelcomeScreen({super.key});

  final List<Widget> pages = const [
    OnboardingItem(),
    OnboardingItem(),
    OnboardingItem(),
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final PageController pageController = PageController(initialPage: 0);
    return Container(
      color: colorScheme.background,
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
                    dotHeight: 20,
                    dotWidth: 10,
                    dotColor: colorScheme.primary,
                    activeDotColor: colorScheme.primary,
                    spacing: 10),
                onDotClicked: (val) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 16,bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PrimaryButton(
                    text: "Giriş Yap",
                    onClick: () {},
                  ),
                  const SizedBox(height: 16),
                  OutlinedAppButton(
                    text: "Kayıt Ol",
                    onClick: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
