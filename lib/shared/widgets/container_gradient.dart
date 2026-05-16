import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligthoftheworld/features/settings/data/app_mode_model.dart';
import 'package:ligthoftheworld/features/settings/presentation/manager/darkmode/darkmode_cubit.dart';

import '../../core/themes/dark_mode_color.dart';
import '../../core/themes/light_mode_color.dart';

class ContainerGradient extends StatelessWidget {
  const ContainerGradient({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DarkmodeCubit, AppMode>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Theme.of(context).canvasColor),
            gradient: state == AppMode.light
                ? LightModeColor.lightOrangeGradient
                : DarkModeColor.orangeGradient,
          ),
          child: child,
        );
      },
    );
  }
}
