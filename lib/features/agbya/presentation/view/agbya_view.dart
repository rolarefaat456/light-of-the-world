import 'package:flutter/material.dart';
import '../../../../core/utils/app_text_styles.dart';

class AgbyaView extends StatelessWidget {
  const AgbyaView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Text(
          'Welcome to the agbya!',
          style: AppTextStyles.style24w700(context: context)
        ));
  }
}