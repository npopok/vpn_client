import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:vpn_client/common/common.dart';

import 'template_content.dart';
import 'choice_list.dart';

class Step1Content extends TemplateContent {
  const Step1Content({super.key});

  @override
  String get title => 'OnboardingStep1.Title'.tr().toUpperCase();

  @override
  Widget body(BuildContext context) {
    print('Step1Content: body');
    return ChoiceList(
      initialValue: 0,
      items: {
        'OnboardingStep1.Choice1'.tr(): AssetsImages.onboardingStep1Choice1,
        'OnboardingStep1.Choice2'.tr(): AssetsImages.onboardingStep1Choice2,
        'OnboardingStep1.Choice3'.tr(): AssetsImages.onboardingStep1Choice3,
        'OnboardingStep1.Choice4'.tr(): AssetsImages.onboardingStep1Choice4,
      },
      onChanged: (value) => debugPrint('Step1: selection = $value'),
    );
  }
}
