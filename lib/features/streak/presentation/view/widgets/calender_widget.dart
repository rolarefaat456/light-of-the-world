import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../manager/calendar_cubit.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarCubit, CalendarState>(
      builder: (context, state) {
        return switch (state) {
          CalendarLoading() =>
            const Center(child: CircularProgressIndicator()),

          CalendarError(:final message) =>
            Center(child: Text(message)),

          CalendarLoaded(:final selectedDay, :final focusedDay) =>
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xff1B1715),
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: const Color(0xffD89B3C),
                  width: 1.2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withOpacity(.08),
                    blurRadius: 20,
                    spreadRadius: 2,
                  )
                ],
              ),

              child: Column(
                children: [

                  /// top tabs
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff2A2420),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [

                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: const Color(0xff8E1F1F),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Center(
                              child: Text(
                                "قبطي",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: const Center(
                              child: Text(
                                "ميلادي",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// calendar
                  TableCalendar(
                    locale: 'ar',

                    firstDay: DateTime.utc(2020, 1, 1),
                    lastDay: DateTime.utc(2030, 12, 31),

                    focusedDay: focusedDay,

                    selectedDayPredicate: (day) =>
                        isSameDay(selectedDay, day),

                    onDaySelected: (selected, focused) {
                      context
                          .read<CalendarCubit>()
                          .selectDay(selected, focused);
                    },

                    headerStyle: const HeaderStyle(
                      formatButtonVisible: false,
                      titleCentered: true,

                      titleTextStyle: TextStyle(
                        color: Color(0xffF7C35F),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),

                      leftChevronIcon: Icon(
                        Icons.chevron_left,
                        color: Colors.amber,
                      ),

                      rightChevronIcon: Icon(
                        Icons.chevron_right,
                        color: Colors.amber,
                      ),
                    ),

                    daysOfWeekStyle: const DaysOfWeekStyle(
                      weekdayStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),

                      weekendStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    calendarStyle: CalendarStyle(

                      outsideDaysVisible: false,

                      defaultTextStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),

                      weekendTextStyle: const TextStyle(
                        color: Colors.white,
                      ),

                      todayDecoration: BoxDecoration(
                        color: Colors.orange.withOpacity(.3),
                        shape: BoxShape.circle,
                      ),

                      selectedDecoration: const BoxDecoration(
                        color: Color(0xffD97706),
                        shape: BoxShape.circle,
                      ),

                      selectedTextStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),

                      markerDecoration: const BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),

                      markersMaxCount: 3,
                    ),

                    calendarBuilders: CalendarBuilders(

                      markerBuilder: (context, date, events) {

                        return Positioned(
                          bottom: 4,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(
                              3,
                              (index) => Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 1),

                                width: 4,
                                height: 4,

                                decoration: BoxDecoration(
                                  color: index == 0
                                      ? Colors.orange
                                      : index == 1
                                          ? Colors.green
                                          : Colors.red,

                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// bottom legend
                  Wrap(
                    spacing: 12,
                    runSpacing: 10,
                    children: [

                      _legendItem(
                        color: Colors.orange,
                        text: "قرأت الإنجيل",
                        icon: Icons.menu_book_rounded,
                      ),

                      _legendItem(
                        color: Colors.green,
                        text: "صليت الأجبية",
                        icon: Icons.lightbulb_outline,
                      ),

                      _legendItem(
                        color: Colors.red,
                        text: "حضرت قداس",
                        icon: Icons.church,
                      ),

                      _legendItem(
                        color: Colors.amber,
                        text: "قرأت القطمارس",
                        icon: Icons.auto_stories,
                      ),
                    ],
                  ),
                ],
              ),
            ),
        };
      },
    );
  }

  Widget _legendItem({
    required Color color,
    required String text,
    required IconData icon,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [

        Icon(
          icon,
          size: 16,
          color: color,
        ),

        const SizedBox(width: 4),

        Text(
          text,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}