import 'dart:ui';

enum AppLanguage {
  arabic('ar'),
  english('en');

  final String code;
  const AppLanguage(this.code);
}

Locale mapLocale(AppLanguage lang) {
  switch (lang) {
    case AppLanguage.arabic:
      return const Locale('ar');
    case AppLanguage.english:
      return const Locale('en');
  }
}