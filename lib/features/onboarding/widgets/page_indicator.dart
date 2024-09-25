import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:vpn_client/common/common.dart';

class PageIndicator extends StatelessWidget {
  final PageController pageController;
  final int pageCount;

  const PageIndicator({
    required this.pageController,
    required this.pageCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ThemeColors>()!;

    return SmoothPageIndicator(
      controller: pageController,
      count: pageCount,
      effect: ScaleEffect(
        dotWidth: 12,
        dotHeight: 12,
        scale: 1.5,
        spacing: 12,
        activeDotColor: colors.pageIndicatorActiveDot,
        dotColor: colors.pageIndicatorDot,
      ),
    );
  }
}
