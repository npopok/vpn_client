import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:vpn_client/common/common.dart';
import 'package:vpn_client/features/onboarding/widgets/widgets.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pageController = PageController();
  final ValueNotifier<int> currentStep = ValueNotifier(0);
  final stepCount = 3;

  @override
  void initState() {
    super.initState();
    pageController.addListener(_handlePageScroll);
  }

  @override
  void dispose() {
    pageController.removeListener(_handlePageScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(color: Theme.of(context).scaffoldBackgroundColor),
      const TopBackground(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: FormLayout.contentPadding,
          child: Column(
            children: [
              FormLayout.titlePadding,
              Expanded(
                child: PageView(
                  controller: pageController,
                  children: const [
                    Step1Content(),
                    Step2Content(),
                    Step3Content(),
                  ],
                ),
              ),
              FormLayout.largeSpacer,
              PageIndicator(
                pageController: pageController,
                pageCount: stepCount,
              ),
              FormLayout.largeSpacer,
              ValueListenableBuilder(
                valueListenable: currentStep,
                builder: (_, value, __) => NextButton(
                  isFinal: currentStep.value == stepCount - 1,
                  onPressed: () => _showNextPage(context),
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }

  void _handlePageScroll() {
    if ((pageController.page! % 1) == 0) {
      int selectedPage = pageController.page!.round();
      if (selectedPage != currentStep.value) {
        currentStep.value = selectedPage;
      }
    }
  }

  void _showNextPage(BuildContext context) {
    if (currentStep.value < stepCount - 1) {
      pageController.nextPage(
        duration: Durations.medium2,
        curve: Curves.easeInOut,
      );
    } else {
      context.router.replaceAll([const HomeRoute()]);
    }
  }
}
