import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:vpn_client/common/common.dart';

import 'template_content.dart';

class Step3Content extends TemplateContent {
  const Step3Content({super.key});

  @override
  String get title => 'OnboardingStep3.Title'.tr().toUpperCase();

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        FormLayout.largeSpacer,
        Padding(
          padding: FormLayout.elementPadding,
          child: Image.asset(AssetsImages.onboardingIllustration),
        ),
        Padding(
          padding: FormLayout.contentPadding,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'OnboardingStep3.Agreement1'.tr(),
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Theme.of(context).primaryColorLight,
                      ),
                ),
                TextSpan(
                  text: 'OnboardingStep3.Agreement2'.tr(),
                  recognizer: _gestureRecognizer(context),
                ),
                TextSpan(
                  text: 'OnboardingStep3.Agreement3'.tr(),
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Theme.of(context).primaryColorLight,
                      ),
                ),
                TextSpan(
                  text: 'OnboardingStep3.Agreement4'.tr(),
                  recognizer: _gestureRecognizer(context),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  GestureRecognizer _gestureRecognizer(BuildContext context) {
    return TapGestureRecognizer()
      ..onTap = () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Message.NotImplemented'.tr()),
              duration: const Duration(seconds: 1),
            ),
          );
  }
}
