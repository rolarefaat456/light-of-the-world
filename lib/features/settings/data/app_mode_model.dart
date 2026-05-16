import 'package:flutter/material.dart';

enum AppMode {
  light,
  dark,
  system,
}


ThemeMode mapTheme(AppMode mode) {
  switch (mode) {
    case AppMode.light:
      return ThemeMode.light;
    case AppMode.dark:
      return ThemeMode.dark;
    case AppMode.system:
      return ThemeMode.system;
  }
}