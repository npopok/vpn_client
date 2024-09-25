import 'package:flutter/material.dart';

abstract class TemplateContent extends StatefulWidget {
  const TemplateContent({super.key});

  String get title;
  Widget body(BuildContext context);

  @override
  State<TemplateContent> createState() => _TemplateContentState();
}

class _TemplateContentState extends State<TemplateContent> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      children: [
        Text(
          widget.title,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        widget.body(context),
      ],
    );
  }
}
