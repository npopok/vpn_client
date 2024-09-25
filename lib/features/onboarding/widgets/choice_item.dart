import 'package:flutter/material.dart';

import 'gradient_container.dart';

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
      secondary: GradientContainer(
        color1: const Color(0xFF2E4C6E).withOpacity(0.17),
        color2: const Color(0xFF5992D4).withOpacity(0.17),
        width: 44,
        height: 44,
        borderColor: const Color(0xFF4796F2).withOpacity(0.37),
        borderWidth: 0.5,
        child: Image.asset(image),
      ),
      onChanged: onChanged,
      contentPadding: const EdgeInsets.only(left: 8),
      controlAffinity: ListTileControlAffinity.trailing,
    );
  }
}
