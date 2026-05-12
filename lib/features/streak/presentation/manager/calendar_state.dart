part of 'calendar_cubit.dart';

sealed class CalendarState extends Equatable {
  const CalendarState();

  @override
  List<Object?> get props => [];
}
class CalendarLoaded extends CalendarState {
  final DateTime selectedDay;
  final DateTime focusedDay;

  const CalendarLoaded({
    required this.selectedDay,
    required this.focusedDay,
  });

  CalendarLoaded copyWith({
    DateTime? selectedDay,
    DateTime? focusedDay,
  }) {
    return CalendarLoaded(
      selectedDay: selectedDay ?? this.selectedDay,
      focusedDay: focusedDay ?? this.focusedDay,
    );
  }

  @override
  List<Object?> get props => [selectedDay, focusedDay];
}

class CalendarLoading extends CalendarState {}

class CalendarError extends CalendarState {
  final String message;

  const CalendarError(this.message);

  @override
  List<Object?> get props => [message];
}