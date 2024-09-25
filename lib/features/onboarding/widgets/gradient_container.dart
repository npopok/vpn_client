import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  final Color color1;
  final Color color2;
  final double width;
  final double height;
  final Color borderColor;
  final double borderWidth;
  final double borderRadius;
  final List<BoxShadow> boxShadow;

  const GradientContainer({
    required this.child,
    required this.color1,
    required this.color2,
    required this.width,
    required this.height,
    this.borderColor = Colors.black,
    this.borderWidth = 1.0,
    this.borderRadius = 10.0,
    this.boxShadow = const [],
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [color1, color2],
        ),
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: boxShadow,
      ),
      child: child,
    );
  }
}
