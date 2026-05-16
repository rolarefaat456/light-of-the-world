part of 'darkmode_cubit.dart';

sealed class DarkmodeState {
  const DarkmodeState();

}
class DarkModeToggle extends DarkmodeState {
  final bool isDarkMode;

  const DarkModeToggle(this.isDarkMode);
}