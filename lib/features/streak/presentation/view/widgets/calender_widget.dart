import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligthoftheworld/core/utils/app_text_styles.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../manager/calendar_cubit.dart';
import 'lenged_item.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarCubit, CalendarState>(
      builder: (context, state) {
        return switch (state) {
          CalendarLoading() => const Center(child: CircularProgressIndicator()),
          CalendarError(:final message) => Center(
            child: Text(
              message,
              style: AppTextStyles.style16w500(context: context, userScale: 1),
            ),
          ),
          CalendarLoaded(:final selectedDay, :final focusedDay) => Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                color: Theme.of(context).dividerColor,
                width: 1.2,
              ),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.08),
                  blurRadius: 20,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              spacing: 16,
              children: [
                /// calendar
                TableCalendar(
                  locale: 'ar',

                  firstDay: DateTime.utc(2020, 1, 1),
                  lastDay: DateTime.utc(2030, 12, 31),

                  focusedDay: focusedDay,

                  selectedDayPredicate: (day) => isSameDay(selectedDay, day),

                  onDaySelected: (selected, focused) {
                    context.read<CalendarCubit>().selectDay(selected, focused);
                  },

                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,

                    titleTextStyle:
                        AppTextStyles.style18w500(
                          context: context,
                          userScale: 1,
                        ).copyWith(
                          color: Theme.of(context).textTheme.bodyLarge!.color,
                        ),

                    leftChevronIcon: Icon(
                      Icons.chevron_left,
                      color: Theme.of(context).colorScheme.primary,
                    ),

                    rightChevronIcon: Icon(
                      Icons.chevron_right,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),

                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekdayStyle:
                        AppTextStyles.style12w400(
                          context: context,
                          userScale: 1,
                        ).copyWith(
                          color: Theme.of(
                            context,
                          ).textTheme.displayMedium!.color,
                        ),
                    weekendStyle:
                        AppTextStyles.style12w400(
                          context: context,
                          userScale: 1,
                        ).copyWith(
                          color: Theme.of(
                            context,
                          ).textTheme.displayMedium!.color,
                        ),
                  ),
                  calendarStyle: CalendarStyle(
                    outsideDaysVisible: false,
                    defaultTextStyle:
                        AppTextStyles.style16w500(
                          context: context,
                          userScale: 1,
                        ).copyWith(
                          color: Theme.of(
                            context,
                          ).textTheme.displayLarge!.color,
                        ),
                    weekendTextStyle:
                        AppTextStyles.style16w400(
                          context: context,
                          userScale: 1,
                        ).copyWith(
                          color: Theme.of(
                            context,
                          ).textTheme.displayLarge!.color,
                        ),
                    todayDecoration: BoxDecoration(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withValues(alpha: 0.3),
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                    selectedTextStyle:
                        AppTextStyles.style16w400(
                          context: context,
                          userScale: 1,
                        ).copyWith(
                          color: Theme.of(
                            context,
                          ).textTheme.displayLarge!.color,
                        ),
                    markerDecoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
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
                              margin: const EdgeInsets.symmetric(horizontal: 1),

                              width: 4,
                              height: 4,

                              decoration: BoxDecoration(
                                color: index == 0
                                    ? Theme.of(context).colorScheme.primary
                                    : index == 1
                                    ? Theme.of(context).colorScheme.scrim
                                    : Theme.of(context).colorScheme.tertiary,

                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                /// bottom legend
                Wrap(
                  spacing: 12,
                  runSpacing: 10,
                  children: [
                    LengedItem(
                      icon: Icons.menu_book_rounded,
                      text: "قرأت الإنجيل",
                      color: Theme.of(context).colorScheme.primary,
                    ),

                    LengedItem(
                      icon: Icons.lightbulb_outline,
                      text: "صليت الأجبية",
                      color: Theme.of(context).colorScheme.scrim,
                    ),

                    LengedItem(
                      icon: Icons.church,
                      text: "حضرت قداس",
                      color: Theme.of(context).colorScheme.tertiary,
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
}
