import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:vpn_client/common/routes.dart';
import 'package:vpn_client/screens/screens.dart';

@RoutePage()
class OnboardingStep1Screen extends OnboardingTemplateScreen {
  const OnboardingStep1Screen({super.key});

  @override
  ScreenInfo get screenInfo => ScreenInfo(
        title: 'OnboardingStep1Screen.Title'.tr(),
        progress: (step: 1, count: 3),
        nextScreen: const OnboardingStep2Route(),
      );

  @override
  Widget buildContent(BuildContext context) {
    return const Placeholder();
  }
}
