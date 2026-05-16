part of 'darkmode_cubit.dart';

sealed class DarkmodeState extends Equatable {
  const DarkmodeState();

  @override
  List<Object> get props => [];
}
class DarkModeToggle extends DarkmodeState {
  final bool isDarkMode;

  const DarkModeToggle(this.isDarkMode);

  @override
  List<Object> get props => [isDarkMode];
}