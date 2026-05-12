import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligthoftheworld/core/utils/app_text_styles.dart';
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
      body: Center(
        child: Text(
          'Welcome to the setting!',
          style: AppTextStyles.style24w700(context: context, userScale: scale),
        ),
      ),
    );
  }
}
