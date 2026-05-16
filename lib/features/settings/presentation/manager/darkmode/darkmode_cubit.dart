import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'darkmode_state.dart';

class DarkmodeCubit extends Cubit<DarkmodeState> {
  DarkmodeCubit() : super(DarkModeToggle(false));

  void toggleDarkMode(bool isDarkMode) {
    emit(DarkModeToggle(isDarkMode));
  }
}
