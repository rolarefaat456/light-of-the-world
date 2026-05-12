import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../settings/presentation/manager/font size/font_size_cubit.dart';

class KholagyView extends StatelessWidget {
  const KholagyView({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = context.watch<FontSizeCubit>().state is FontSizeChanged
        ? (context.watch<FontSizeCubit>().state as FontSizeChanged).scale
        : 1.0;
    return Center(
      child: Text(
        'Welcome to the mangalya!',
        style: AppTextStyles.style24w700(context: context, userScale: scale),
      ),
    );
  }
}
