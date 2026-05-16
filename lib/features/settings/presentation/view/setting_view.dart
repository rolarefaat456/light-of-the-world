import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligthoftheworld/features/settings/presentation/manager/darkmode/darkmode_cubit.dart';
import 'package:ligthoftheworld/features/settings/presentation/manager/language/language_cubit.dart';
import 'package:ligthoftheworld/shared/functions/custom_app_bar.dart';
import '../../data/app_mode_model.dart';
import '../../data/font_size_level.dart';
import '../../data/language_model.dart';
import '../manager/font size/font_size_cubit.dart';
import 'widgets/switch_row.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});
  static const String routeName = '/setting';

  @override
  Widget build(BuildContext context) {
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
            BlocBuilder<DarkmodeCubit, AppMode>(
              builder: (context, isDarkMode) {
                return SwitchRow(
                  text: 'وضع الضوء',
                  firstText: 'الوضع النهاري',
                  secondText: 'الوضع الليلي',
                  current: isDarkMode == AppMode.dark,
                  onChange: (value) {
                    context.read<DarkmodeCubit>().setMode(
                      value ? AppMode.dark : AppMode.light,
                    );
                  },
                );
              },
            ),
            BlocBuilder<LanguageCubit, AppLanguage>(
              builder: (context, state) {
                return SwitchRow(
                  onChange: (value) {
                    context.read<LanguageCubit>().toggle(
                      value ? AppLanguage.arabic : AppLanguage.english,
                    );
                  },
                  text: 'اللغة',
                  firstText: 'العربية',
                  secondText: 'الإنجليزية',
                  current: state == AppLanguage.arabic,
                );
              },
            ),
            BlocBuilder<FontSizeCubit, FontSizeLevel>(
              builder: (context, level) {
                return Slider(
                  min: FontSizeLevel.verySmall.scale,
                  max: FontSizeLevel.veryLarge.scale,
                  divisions: 4,
                  value: level.scale,
                  onChanged: (value) {
                    context.read<FontSizeCubit>().setFromSlider(value);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
