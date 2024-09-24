import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:auto_route/auto_route.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:vpn_client/common/common.dart';

class ScreenInfo {
  final String title;
  final ({int step, int count}) progress;
  final PageRouteInfo nextScreen;

  bool get isFinal => progress.step == progress.count;
  bool get isComplete => progress.step >= progress.count - 1;

  const ScreenInfo({
    required this.title,
    required this.progress,
    required this.nextScreen,
  });
}

abstract class OnboardingTemplateScreen extends StatefulWidget {
  const OnboardingTemplateScreen({super.key});

  ScreenInfo get screenInfo;
  Widget buildContent(BuildContext context);

  @override
  State<OnboardingTemplateScreen> createState() => _OnboardingTemplateScreenState();
}

class _OnboardingTemplateScreenState extends State<OnboardingTemplateScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            widget.screenInfo.title,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: Padding(
              padding: FormLayout.contentPadding,
              child: Center(
                child: Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: widget.buildContent(context),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          AnimatedSmoothIndicator(
            activeIndex: widget.screenInfo.progress.step - 1,
            count: widget.screenInfo.progress.count,
            effect: const WormEffect(),
          ),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: () => showNextScreen(context),
            child: Text(
              widget.screenInfo.isFinal ? 'Button.GetStarted'.tr() : 'Button.Continue'.tr(),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }

  void showNextScreen(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      if (widget.screenInfo.isFinal) {
        context.router.replaceAll([widget.screenInfo.nextScreen]);
      } else {
        context.navigateTo(widget.screenInfo.nextScreen);
      }
    }
  }
}
