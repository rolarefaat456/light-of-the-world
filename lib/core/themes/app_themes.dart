import 'package:flutter/material.dart';
import 'package:ligthoftheworld/core/themes/dark_mode_color.dart';
import 'package:ligthoftheworld/core/themes/light_mode_color.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: LightModeColor.black),
      bodyLarge: TextStyle(color: LightModeColor.orange),
      bodySmall: TextStyle(color: LightModeColor.grayOrange),
      displayLarge: TextStyle(color: LightModeColor.white),
      displayMedium: TextStyle(color: LightModeColor.grayOrange),
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: LightModeColor.primaryLight,
    cardColor: LightModeColor.white,

    canvasColor: LightModeColor.orangeAccent,
    colorScheme: const ColorScheme.light(
      primary: LightModeColor.orange,
      secondary: LightModeColor.navy,
      tertiary: Colors.red,
      scrim: Colors.green
    ),
    dividerColor: LightModeColor.orangeAccent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: LightModeColor.white,
      selectedItemColor: LightModeColor.orange,
      selectedIconTheme: IconThemeData(color: LightModeColor.orange),
      unselectedIconTheme: IconThemeData(color: LightModeColor.darkGray),
      unselectedItemColor: LightModeColor.darkGray,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: DarkModeColor.white),
      bodyLarge: TextStyle(color: const Color.fromARGB(255, 22, 17, 8)),
      bodySmall: TextStyle(color: DarkModeColor.grayOrange),
      displayLarge: TextStyle(color: DarkModeColor.black),
      displayMedium: TextStyle(color: DarkModeColor.grayOrange),
    ),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: DarkModeColor.primaryDark,
    cardColor: DarkModeColor.black,
    canvasColor: DarkModeColor.orangeAccent,
    colorScheme: const ColorScheme.dark(
      primary: DarkModeColor.orange,
      secondary: DarkModeColor.lightOrange,
      tertiary: Colors.red,
      scrim: Colors.green
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: DarkModeColor.black,
      selectedItemColor: DarkModeColor.orange,
      selectedIconTheme: IconThemeData(color: DarkModeColor.orange),
      unselectedIconTheme: IconThemeData(color: DarkModeColor.lightOrange),
      unselectedItemColor: DarkModeColor.lightOrange,
    ),
    dividerColor: DarkModeColor.orange,
  );
}
