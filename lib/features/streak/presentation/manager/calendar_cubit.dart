import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'calendar_state.dart';


class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit()
      : super(CalendarLoaded(
          selectedDay: DateTime.now(),
          focusedDay: DateTime.now(),
        ));

  Future<void> selectDay(DateTime selected, DateTime focused) async {
    try {
      emit( CalendarLoading());

      await Future.delayed(const Duration(milliseconds: 300)); 
      // simulation (ممكن تشيليها)

      emit(CalendarLoaded(
        selectedDay: selected,
        focusedDay: focused,
      ));
    } catch (e) {
      emit(CalendarError("Something went wrong"));
    }
  }
}