part of 'language_cubit.dart';

sealed class LanguageState {
  const LanguageState();

}
class LanguageToggle extends LanguageState {
  final bool isArabic;

  const LanguageToggle({required this.isArabic});

}

