import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:ligthoftheworld/features/streak/presentation/view/widgets/percentage_of_progress.dart';

import '../manager/calendar_cubit.dart';
import 'widgets/calender_widget.dart';
import 'widgets/last_achievement.dart';

class StreakView extends StatelessWidget {
  const StreakView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PercentageOfProgress(),
            BlocProvider(
              create: (context) => CalendarCubit(),
              child: CalendarWidget(),
            ),
            // HeatMap(

            //   datasets: {
            //     DateTime(2025, 5, 1): 3,
            //     DateTime(2025, 5, 2): 7,
            //     DateTime(2025, 5, 3): 1,
            //   },

            //   colorMode: ColorMode.opacity,

            //   defaultColor: Colors.grey.shade800,

            //   textColor: Colors.white,

            //   showColorTip: false,

            //   size: 10,
            //   colorsets: {
            //     1: Colors.green[100]!,
            //     3: Colors.green[300]!,
            //     5: Colors.green[500]!,
            //     7: Colors.green[700]!,
            //     10: Colors.green[900]!,
            //   },
            // ),
            LastAchievement(), // lma el user yro7 2das ytdaf hyna aw wsl ly fyn fy kra2t el bible
          ],
        ),
      ),
    );
  }
}
