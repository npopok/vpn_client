import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/svg.dart';

import 'package:vpn_client/common/common.dart';
import 'package:vpn_client/features/onboarding/widgets/widgets.dart';

class Step3Content extends TemplateContent {
  const Step3Content({super.key});

  @override
  String get title => 'OnboardingStep3.Title'.tr().toUpperCase();

  @override
  Widget get body => Column(
        children: [
          FormLayout.largeSpacer,
          Padding(
            padding: FormLayout.elementPadding,
            child: SvgPicture.asset(
              AssetsImages.onboardingIllustration,
            ),
          ),
          FormLayout.largeSpacer,
          const Text('test'),
        ],
      );
}
