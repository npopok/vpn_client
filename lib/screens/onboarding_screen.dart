import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:vpn_client/common/common.dart';
import 'package:vpn_client/widgets/widgets.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final formKey = GlobalKey<FormState>();
  final pageController = PageController();
  final ValueNotifier<int> currentStep = ValueNotifier(1);
  final stepCount = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: FormLayout.contentPadding,
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  OnboardingStep1(),
                  OnboardingStep2(),
                  OnboardingStep3(),
                ],
              ),
            ),
            FormLayout.largeSpacer,
            OnboardingPageIndicator(
              pageController: pageController,
              pageCount: stepCount,
            ),
            FormLayout.largeSpacer,
            ValueListenableBuilder(
              valueListenable: currentStep,
              builder: (_, value, __) => OnboardingNextButton(
                isFinal: currentStep.value == stepCount,
                onPressed: () => showNextPage(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showNextPage(BuildContext context) {
    // if (formKey.currentState!.validate()) {
    //   formKey.currentState!.save();

    if (currentStep.value < stepCount) {
      currentStep.value = currentStep.value + 1;
      pageController.animateToPage(
        currentStep.value - 1,
        duration: Durations.medium2,
        curve: Curves.bounceInOut,
      );
    } else {
      context.router.replaceAll([const HomeRoute()]);
    }
    //   }
  }
}
