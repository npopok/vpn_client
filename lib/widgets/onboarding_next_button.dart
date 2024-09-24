import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class OnboardingNextButton extends StatelessWidget {
  final bool isFinal;
  final VoidCallback onPressed;

  const OnboardingNextButton({
    required this.isFinal,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 52,
      child: FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(Colors.white),
          backgroundColor: WidgetStateProperty.all(const Color(0xFF4796F2)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        child: Text(
          (isFinal ? 'Button.GetStarted'.tr() : 'Button.Continue'.tr()).toUpperCase(),
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
