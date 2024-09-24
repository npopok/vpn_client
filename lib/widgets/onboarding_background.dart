import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:vpn_client/common/common.dart';

class OnboardingBackground extends StatelessWidget {
  const OnboardingBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: SvgPicture.asset(
        AssetsImages.onboardingBackground,
        fit: BoxFit.fitWidth,
        alignment: Alignment.topCenter,
        colorFilter: const ColorFilter.mode(Color(0xFFD9D9D9), BlendMode.srcIn),
      ),
    );
  }
}
