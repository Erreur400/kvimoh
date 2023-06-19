import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  Color primaryColor = Color.fromARGB(237, 9, 98, 233);
  Color darkPrimaryColor = const Color.fromARGB(255, 0, 22, 68);
  Color secondaryColor = const Color(0xFF0B233D);
  Color tertiaryColor = const Color(0xFF0F1015);

  static TextTheme _textTheme() {
    return GoogleFonts.ibmPlexSansTextTheme();
  }

  static ThemeData lightTheme = ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: _textTheme(),
      useMaterial3: true,
      primaryColor: ThemeData.light().scaffoldBackgroundColor,
      colorScheme: const ColorScheme.light().copyWith(
          primary: _appTheme.primaryColor,
          secondary: _appTheme.secondaryColor,
          tertiary: _appTheme.tertiaryColor));

  static ThemeData darkTheme = ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: _textTheme(),
      useMaterial3: true,
      primaryColor: ThemeData.dark().scaffoldBackgroundColor,
      colorScheme: const ColorScheme.dark()
          .copyWith(primary: _appTheme.darkPrimaryColor));
}

AppTheme _appTheme = AppTheme();
