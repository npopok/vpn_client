import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:vpn_client/common/common.dart';

import 'template_content.dart';
import 'choice_list.dart';

class Step2Content extends TemplateContent {
  const Step2Content({super.key});

  @override
  String get title => 'OnboardingStep2.Title'.tr().toUpperCase();

  @override
  Widget body(BuildContext context) => ChoiceList(
        initialValue: 0,
        items: {
          'OnboardingStep2.Choice1'.tr(): AssetsImages.onboardingStep2Choice1,
          'OnboardingStep2.Choice2'.tr(): AssetsImages.onboardingStep2Choice2,
          'OnboardingStep2.Choice3'.tr(): AssetsImages.onboardingStep2Choice3,
          'OnboardingStep2.Choice4'.tr(): AssetsImages.onboardingStep2Choice4,
        },
        onChanged: (value) => debugPrint('Step2: selection = $value'),
      );
}
