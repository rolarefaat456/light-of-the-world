import 'package:flutter/material.dart';
import '../../../../core/utils/app_text_styles.dart';

class BibleView extends StatelessWidget {
  const BibleView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Text(
          'Welcome to the bible!',
          style: AppTextStyles.style24w700(context: context)
        ));
    
  }
}