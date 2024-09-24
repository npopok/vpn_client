import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:vpn_client/common/routes.dart';
import 'package:vpn_client/screens/screens.dart';

@RoutePage()
class OnboardingStep3Screen extends OnboardingTemplateScreen {
  const OnboardingStep3Screen({super.key});

  @override
  ScreenInfo get screenInfo => ScreenInfo(
        title: 'OnboardingStep3Screen.Title'.tr(),
        progress: (step: 3, count: 3),
        nextScreen: const HomeRoute(),
      );

  @override
  Widget buildContent(BuildContext context) {
    return const Placeholder();
  }
}
