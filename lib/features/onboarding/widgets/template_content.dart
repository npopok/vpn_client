import 'package:flutter/material.dart';

abstract class TemplateContent extends StatelessWidget {
  String get title;
  Widget body(BuildContext context);

  const TemplateContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        body(context),
      ],
    );
  }
}
