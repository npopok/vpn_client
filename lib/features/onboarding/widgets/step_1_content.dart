import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:vpn_client/common/common.dart';

import 'template_content.dart';
import 'choice_list.dart';
import 'choice_item.dart';

class Step1Content extends TemplateContent {
  const Step1Content({super.key});

  @override
  String get title => 'OnboardingStep1.Title'.tr().toUpperCase();

  @override
  Widget body(BuildContext context) => ChoiceList(
        items: [
          ChoiceItem(
            value: 0,
            groupValue: 0,
            title: 'OnboardingStep1.Choice1'.tr(),
            image: AssetsImages.onboardingStep1Choice1,
            onChanged: (value) => null,
          ),
          ChoiceItem(
            value: 1,
            groupValue: 0,
            title: 'OnboardingStep1.Choice2'.tr(),
            image: AssetsImages.onboardingStep1Choice2,
            onChanged: (value) => null,
          ),
          ChoiceItem(
            value: 2,
            groupValue: 0,
            title: 'OnboardingStep1.Choice3'.tr(),
            image: AssetsImages.onboardingStep1Choice3,
            onChanged: (value) => null,
          ),
          ChoiceItem(
            value: 3,
            groupValue: 0,
            title: 'OnboardingStep1.Choice4'.tr(),
            image: AssetsImages.onboardingStep1Choice4,
            onChanged: (value) => null,
          ),
        ],
      );
}
