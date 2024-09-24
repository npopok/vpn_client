import 'package:flutter/material.dart';
import 'package:vpn_client/features/onboarding/widgets/widgets.dart';

class ChoiceList extends StatefulWidget {
  final List<ChoiceItem> items;

  const ChoiceList({
    required this.items,
    super.key,
  });

  @override
  State<ChoiceList> createState() => _ChoiceListState();
}

class _ChoiceListState extends State<ChoiceList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.items.length,
      itemBuilder: (_, index) => widget.items[index],
      separatorBuilder: (_, __) => const Divider(),
    );
  }
}
