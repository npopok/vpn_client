import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color pageIndicatorActiveDot;
  final Color pageIndicatorDot;
  final Color topBackground;
  final Color gradientContainerColor1;
  final Color gradientContainerColor2;
  final Color gradientContainerBorder;

  const ThemeColors({
    required this.pageIndicatorActiveDot,
    required this.pageIndicatorDot,
    required this.topBackground,
    required this.gradientContainerColor1,
    required this.gradientContainerColor2,
    required this.gradientContainerBorder,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? pageIndicatorActiveDot,
    Color? pageIndicatorDot,
    Color? topBackground,
    Color? gradientContainerColor1,
    Color? gradientContainerColor2,
    Color? gradientContainerBorder,
  }) {
    return ThemeColors(
      pageIndicatorActiveDot: pageIndicatorActiveDot ?? this.pageIndicatorActiveDot,
      pageIndicatorDot: pageIndicatorDot ?? this.pageIndicatorDot,
      topBackground: topBackground ?? this.topBackground,
      gradientContainerColor1: gradientContainerColor1 ?? this.gradientContainerColor1,
      gradientContainerColor2: gradientContainerColor2 ?? this.gradientContainerColor2,
      gradientContainerBorder: gradientContainerBorder ?? this.gradientContainerBorder,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    covariant ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }
    return ThemeColors(
      pageIndicatorActiveDot: Color.lerp(pageIndicatorActiveDot, other.pageIndicatorActiveDot, t)!,
      pageIndicatorDot: Color.lerp(pageIndicatorDot, other.pageIndicatorDot, t)!,
      topBackground: Color.lerp(topBackground, other.topBackground, t)!,
      gradientContainerColor1:
          Color.lerp(gradientContainerColor1, other.gradientContainerColor1, t)!,
      gradientContainerColor2:
          Color.lerp(gradientContainerColor2, other.gradientContainerColor2, t)!,
      gradientContainerBorder:
          Color.lerp(gradientContainerBorder, other.gradientContainerBorder, t)!,
    );
  }
}

class Themes {
  final Map<Brightness, ThemeData> _themeData = {};

  Themes() {
    _themeData[Brightness.light] = _buildTheme(Brightness.light);
    _themeData[Brightness.dark] = _buildTheme(Brightness.dark);
  }

  ThemeData get lightTheme => _themeData[Brightness.light]!;
  ThemeData get darkTheme => _themeData[Brightness.dark]!;

  static ThemeData _buildTheme(Brightness brightness) {
    final themeData = ThemeData(brightness: brightness);
    final textTheme = GoogleFonts.jostTextTheme(themeData.textTheme);

    return themeData.copyWith(
      scaffoldBackgroundColor: const Color(0xFF0E1326),
      dividerTheme: const DividerThemeData(color: Color(0xFF132F50)),
      radioTheme: const RadioThemeData(
        fillColor: WidgetStatePropertyAll(Color(0xFF4796F2)),
      ),
      textTheme: textTheme.copyWith(
        titleLarge: textTheme.titleLarge!.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 27,
        ),
        bodyLarge: textTheme.bodyLarge!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 17,
        ),
        labelMedium: textTheme.labelMedium!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        labelLarge: textTheme.labelLarge!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          foregroundColor: const WidgetStatePropertyAll(Colors.white),
          backgroundColor: const WidgetStatePropertyAll(Color(0xFF4796F2)),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
      extensions: <ThemeExtension<dynamic>>[
        ThemeColors(
          pageIndicatorActiveDot: const Color(0xFFDFDFDF),
          pageIndicatorDot: const Color(0xFF132F50),
          topBackground: const Color(0xFFD9D9D9),
          gradientContainerColor1: const Color(0xFF2E4C6E).withOpacity(0.17),
          gradientContainerColor2: const Color(0xFF5992D4).withOpacity(0.17),
          gradientContainerBorder: const Color(0xFF4796F2).withOpacity(0.37),
        ),
      ],
    );
  }
}
