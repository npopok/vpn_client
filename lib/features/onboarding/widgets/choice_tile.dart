import 'package:flutter/material.dart';

import 'package:vpn_client/common/common.dart';

import 'gradient_container.dart';

class ChoiceTile extends StatelessWidget {
  final int value;
  final int groupValue;
  final String title;
  final String image;
  final Function(int?) onChanged;

  const ChoiceTile({
    required this.value,
    required this.groupValue,
    required this.title,
    required this.image,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ThemeColors>()!;

    return RadioListTile<int>(
      value: value,
      groupValue: groupValue,
      title: Text(title),
      secondary: GradientContainer(
        color1: colors.gradientContainerColor1,
        color2: colors.gradientContainerColor2,
        width: 44,
        height: 44,
        borderColor: colors.gradientContainerBorder,
        borderWidth: 0.5,
        borderRadius: 10.0,
        child: Image.asset(image),
      ),
      onChanged: onChanged,
      contentPadding: const EdgeInsets.only(left: 8),
      controlAffinity: ListTileControlAffinity.trailing,
    );
  }
}
