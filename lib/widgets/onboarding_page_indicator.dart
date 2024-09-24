import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPageIndicator extends StatelessWidget {
  final PageController pageController;
  final int pageCount;

  const OnboardingPageIndicator({
    required this.pageController,
    required this.pageCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: pageCount,
      effect: const ScaleEffect(
        dotWidth: 12,
        dotHeight: 12,
        scale: 1.5,
        spacing: 12,
        activeDotColor: Color(0xFFDFDFDF),
        dotColor: Color(0xFF132F50),
      ),
    );
  }
}
