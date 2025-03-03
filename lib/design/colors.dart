import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Color(0xFF75A8FF),
    secondary: Color(0xFFFF0000),
    surface: Color(0xFFFFFFFF),
    onPrimary: Color(0xFFF6F6F6),
    onSecondary: Colors.black,
    onSurface: Colors.black,
  ),
);

final ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.dark(
    primary: Color(0xFFA8C7FC),
    secondary: Color(0xFFFF0000),
    surface: Color(0xFF1A1A1A),
    onPrimary: Color(0xFF363636),
    onSecondary: Colors.white,
    onSurface: Colors.white,
  ),
);
