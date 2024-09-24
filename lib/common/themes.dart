import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      textTheme: textTheme.copyWith(
        titleLarge: textTheme.titleLarge!.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 27,
        ),
        bodyLarge: textTheme.bodyLarge!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 17,
        ),
      ),
    );
  }
}
