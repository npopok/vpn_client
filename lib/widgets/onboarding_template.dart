import 'package:flutter/material.dart';

abstract class OnboardingTemplate extends StatelessWidget {
  String get title;
  Widget get body;

  const OnboardingTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        body,
      ],
    );
  }
}
