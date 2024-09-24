import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  final int value;
  final int groupValue;
  final String title;
  final String image;
  final Function(int?) onChanged;

  const ChoiceItem({
    required this.value,
    required this.groupValue,
    required this.title,
    required this.image,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RadioListTile<int>(
      value: value,
      groupValue: groupValue,
      title: Text(title),
      secondary: Image.asset(image),
      onChanged: onChanged,
      controlAffinity: ListTileControlAffinity.trailing,
    );
  }
}
