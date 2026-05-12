import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligthoftheworld/core/utils/app_text_styles.dart';

import '../../../settings/presentation/manager/font size/font_size_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final scale = context.watch<FontSizeCubit>().state is FontSizeChanged
        ? (context.watch<FontSizeCubit>().state as FontSizeChanged).scale
        : 1.0;
    return Center(
      child: Column(
        children: [
          Text(
            'Welcome to the Home View!',
            style: AppTextStyles.style24w700(
              context: context,
              userScale: scale,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.local_fire_department, color: Colors.orange),
              title: Text("Your Streak"),
              subtitle: Text("5 days in a row 🔥"),
            ),
          ),
        ],
      ),
    );
  }
}
