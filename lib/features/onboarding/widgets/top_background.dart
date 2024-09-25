import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:vpn_client/common/common.dart';

class TopBackground extends StatelessWidget {
  const TopBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ThemeColors>()!;

    return ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: SvgPicture.asset(
        AssetsImages.onboardingBackground,
        fit: BoxFit.fitWidth,
        alignment: Alignment.topCenter,
        colorFilter: ColorFilter.mode(colors.topBackground, BlendMode.srcIn),
      ),
    );
  }
}
