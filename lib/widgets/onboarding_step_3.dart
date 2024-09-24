import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:vpn_client/widgets/widgets.dart';

class OnboardingStep3 extends OnboardingTemplate {
  const OnboardingStep3({super.key});

  @override
  String get title => 'OnboardingStep3.Title'.tr().toUpperCase();

  @override
  Widget get body => const Text('STEP 3');
}
