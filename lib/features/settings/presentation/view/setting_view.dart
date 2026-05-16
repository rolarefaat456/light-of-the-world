import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligthoftheworld/core/utils/app_text_styles.dart';
import 'package:ligthoftheworld/features/settings/presentation/manager/darkmode/darkmode_cubit.dart';
import 'package:ligthoftheworld/shared/functions/custom_app_bar.dart';
import '../manager/font size/font_size_cubit.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});
  static const String routeName = '/setting';

  @override
  Widget build(BuildContext context) {
    final scale = context.watch<FontSizeCubit>().state is FontSizeChanged
        ? (context.watch<FontSizeCubit>().state as FontSizeChanged).scale
        : 1.0;
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'الاعدادات',
        routeName: routeName,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 16,
          children: [
            BlocBuilder<DarkmodeCubit, DarkmodeState>(
              builder: (context, state) {
                switch (state) {
                  case DarkModeToggle():
                    return AnimatedToggleSwitch.dual(
                      current: state.isDarkMode,
                      first: false,
                      second: true,
                      onChanged: (value) {
                        context.read<DarkmodeCubit>().toggleDarkMode(value);
                      },
                      textBuilder: (value) => Text(
                        value ? 'الوضع النهاري' : 'الوضع الليلي',
                        style: AppTextStyles.style14w700(
                          context: context,
                          userScale: scale,
                        ),
                      ),
                    );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
