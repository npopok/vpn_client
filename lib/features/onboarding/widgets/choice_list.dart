import 'package:flutter/material.dart';

import 'choice_tile.dart';

class ChoiceList extends StatefulWidget {
  final int initialValue;
  final Map<String, String> items;
  final Function(int?) onChanged;

  const ChoiceList({
    required this.initialValue,
    required this.items,
    required this.onChanged,
    super.key,
  });

  @override
  State<ChoiceList> createState() => _ChoiceListState();
}

class _ChoiceListState extends State<ChoiceList> {
  late int currentValue;

  @override
  void initState() {
    super.initState();
    currentValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.items.length,
      itemBuilder: (_, index) => ChoiceTile(
        value: index,
        groupValue: currentValue,
        title: widget.items.keys.elementAt(index),
        image: widget.items.values.elementAt(index),
        onChanged: (value) {
          setState(() => currentValue = value!);
          widget.onChanged(value!);
        },
      ),
      separatorBuilder: (_, __) => const Divider(),
    );
  }
}
